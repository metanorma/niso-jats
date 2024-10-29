# frozen_string_literal: true

RSpec.describe Niso::Jats::ElementCitation do
  context "with a element_citation.xml" do
    let(:fixture) { file_fixture("element_citation.xml") }

    it_behaves_like "a serializer"
  end
end
