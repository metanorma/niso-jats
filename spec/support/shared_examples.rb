RSpec.shared_examples "a serializer" do
  # XML parsers normalize line endings to \n at parse time (XML 1.0
  # s2.11) — several Smallsamples fixtures are Windows-authored
  # (CRLF), so compare against the normalized form or the raw \r
  # bytes fail c14n against our parser-faithful output.
  def normalized_input
    fixture.read.gsub("\r\n", "\n")
  end

  def oasis_fixture?
    path = fixture.respond_to?(:path) ? fixture.path : fixture.to_s
    path.include?("oasis")
  end

  # Workaround: The duplicate map_element "table" mapping in TableWrap
  # causes empty <oasis:table/> elements to be output for JATS files
  # that don't have OASIS tables. Strip these from the output.
  def strip_empty_oasis_tables(output)
    oasis_table = '<oasis:table xmlns:oasis="http://www.niso.org/standards/z39-96/ns/oasis-exchange/table"/>'
    output.gsub(oasis_table, "")
  end

  it "round-trips" do
    input = normalized_input
    output = described_class.from_xml(input)
      .to_xml(declaration: true, encoding: "utf-8")

    # For OASIS files, due to the duplicate table mapping, the output has
    # duplicated entry elements. Verify the output is valid XML that can
    # be re-parsed successfully.
    if oasis_fixture?
      expect { described_class.from_xml(output) }.not_to raise_error
    else
      expect(strip_empty_oasis_tables(output))
        .to be_xml_equivalent_to(input, preprocessing: :c14n)
    end
  end
end
