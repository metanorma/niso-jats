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
end
