RSpec.shared_examples "a serializer" do
  xit "round-trips with equivalent-xml" do
    input = fixture.read

    serialized = described_class.from_xml(input)
    output = serialized.to_xml(declaration: true, encoding: "utf-8")

    expect(equivalent_xml?(output, input)).to be_truthy
  end

  it "round-trips with xml-c14" do
    input = Xml::C14n.format(fixture.read)

    serialized = described_class.from_xml(input)
    output = Xml::C14n.format(described_class.to_xml(serialized))

    expect(output).to be_analogous_with(input)
  end
end
