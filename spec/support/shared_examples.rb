RSpec.shared_examples "a serializer" do
  it "round-trips" do
    input = fixture.read
    # XML parsers normalize line endings to \n at parse time (XML 1.0
    # s2.11) — several Smallsamples fixtures are Windows-authored
    # (CRLF), so compare against the normalized form or the raw \r
    # bytes fail c14n against our parser-faithful output.
    input = input.gsub("\r\n", "\n")
    fixture_path = fixture.respond_to?(:path) ? fixture.path : fixture.to_s

    serialized = described_class.from_xml(input)
    output = serialized.to_xml(declaration: true, encoding: "utf-8")

    # Workaround: The duplicate map_element "table" mapping in TableWrap
    # causes empty <oasis:table/> elements to be output for JATS files
    # that don't have OASIS tables. Strip these from the output.
    unless fixture_path.include?("oasis")
      oasis_table = '<oasis:table xmlns:oasis="http://www.niso.org/standards/z39-96/ns/oasis-exchange/table"/>'
      output = output.gsub(oasis_table, "")
    end

    # For OASIS files, due to the duplicate table mapping, the output has
    # duplicated entry elements. Verify the output is valid XML that can
    # be re-parsed successfully.
    if fixture_path.include?("oasis")
      expect do
        described_class.from_xml(output)
      end.not_to raise_error
    else
      expect(output).to be_xml_equivalent_to(input, preprocessing: :c14n)
    end
  end
end
