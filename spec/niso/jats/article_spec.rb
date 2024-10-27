# frozen_string_literal: true

RSpec.describe Niso::Jats::Article do
  it "round-trips bmj_sample.xml with equivalent-xml" do
    input = fixture("bmj_sample.xml").read

    parsed = described_class.from_xml(input)
    output = parsed.to_xml(pretty: true, declaration: true, encoding: "utf-8")

    expect(output).to be_equivalent_to(input)
  end
end
