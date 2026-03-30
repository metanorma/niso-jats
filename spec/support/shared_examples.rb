RSpec.shared_examples "a serializer" do
  it "round-trips" do
    input = fixture.read
    serialized = described_class.from_xml(input)
    output = serialized.to_xml(declaration: true, encoding: "utf-8")

    # TODO: The preprocessing is needed for Canon to ignore insignificant
    # whitespace. We need to fix it.
    expect(output).to be_xml_equivalent_to(input, preprocessing: :c14n)
  end
end
