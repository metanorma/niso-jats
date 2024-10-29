# frozen_string_literal: true

RSpec.describe Niso::Jats::Article do
  context "with bmj_sample.xml" do
    let(:fixture) { file_fixture("bmj_sample.xml") }
    it_behaves_like "a serializer"
  end

  context "with pnas_sample.xml" do
    let(:fixture) { file_fixture("pnas_sample.xml") }
    it_behaves_like "a serializer"
  end

  Dir[File.join(__dir__, "../../fixtures/niso-jats/**/Smallsamples/*.xml")].each do |file|
    # Skip files from draft versions
    next if file.include?("/0.4/")
    filename = Pathname.new(file)
    context "with #{filename.relative_path_from(File.join(__dir__, "../.."))}" do
      let(:fixture) { File.new(file) }
      it_behaves_like "a serializer"
    end
  end
end
