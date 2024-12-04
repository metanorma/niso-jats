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
    version = file.match(/\/(?<version>\d+\.\d\w?\d?)\/Smallsamples/)[:version]

    # Skip files from old draft version
    next if version == "0.4"

    # All 1.1d3 files contain a bad xmlns for ali that is missing the trailing slash
    # xmlns:ali="http://www.niso.org/schemas/ali/1.0"
    next if version == "1.1d3"

    describe "Smallsamples from NISO JATS #{version}" do
      filename = Pathname.new(file)
      context "with #{filename.relative_path_from(File.join(__dir__, '../../fixtures'))}" do
        let(:fixture) { File.new(file) }
        it_behaves_like "a serializer"
      end
    end
  end
end
