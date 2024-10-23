# frozen_string_literal: true

RSpec.describe Niso::Jats::Article do
  def file_contents(filename)
    File.read(filename)
  end

  glob_path = Pathname.new(__dir__)
    .join("../../fixtures/*.xml")

  Dir.glob(glob_path)[0..1].each do |filename|
    fn = Pathname.new(filename).basename
    it "round-trips #{fn} with equivalent-xml" do
      input = file_contents(Pathname.new(filename))
      parsed = described_class.from_xml(input)
      output = parsed.to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      expect(output).to be_equivalent_to(input)
    end

    it "round-trips #{fn} with xml-c14" do
      input = file_contents(Pathname.new(filename))
      parsed = described_class.from_xml(input)
      output = parsed.to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      expect(output).to be_analogous_with(input)
    end
  end
end
