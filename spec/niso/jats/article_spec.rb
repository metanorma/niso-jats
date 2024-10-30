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

  xcontext "with niso-jats/archiving/0.4/Smallsamples/samplesmall-archive0-oasis.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/0.4/Smallsamples/samplesmall-archive0-oasis.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/0.4/Smallsamples/samplesmall-archive0.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/0.4/Smallsamples/samplesmall-archive0.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/sample-archive-oasis-and-html1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/sample-archive-oasis-and-html1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/sample-archive-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/sample-archive-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/samplepub-oasis-and-xhtml1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/samplepub-oasis-and-xhtml1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/samplepub-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/samplepub-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/samplesmall-archive1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/samplesmall-archive1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/samplesmall-base1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/samplesmall-base1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.0/Smallsamples/samplesmall-pub1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.0/Smallsamples/samplesmall-pub1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d1/Smallsamples/sample-archive-oasis-and-html1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d1/Smallsamples/sample-archive-oasis-and-html1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d1/Smallsamples/sample-archive-oasis-and-html1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d1/Smallsamples/sample-archive-oasis-and-html1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d1/Smallsamples/sample-archive-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d1/Smallsamples/sample-archive-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d1/Smallsamples/samplesmall-archive1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d1/Smallsamples/samplesmall-archive1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d1/Smallsamples/samplesmall-archive1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d1/Smallsamples/samplesmall-archive1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-and-html1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-and-html1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-and-html1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-and-html1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-and-html1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-and-html1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/sample-archive-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1-mathml.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1-mathml.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d2/Smallsamples/samplesmall-archive1.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-and-html1-mathml3-bad.xml" do
    let(:fixture) do
      file_fixture("niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-and-html1-mathml3-bad.xml")
    end
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-and-html1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-and-html1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-and-html1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-and-html1.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/sample-archive-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1-mathml.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1-mathml.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1.xml" do
    let(:fixture) { file_fixture("niso-jats/archiving/1.1d3/Smallsamples/samplesmall-archive1.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/articleauthoring/0.4/Smallsamples/samplesmall-auth0.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/0.4/Smallsamples/samplesmall-auth0.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/articleauthoring/0.4/Smallsamples/samplesmall-base0.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/0.4/Smallsamples/samplesmall-base0.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.0/Smallsamples/samplesmall-auth1.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.0/Smallsamples/samplesmall-auth1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.0/Smallsamples/samplesmall-base1.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.0/Smallsamples/samplesmall-base1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d1/Smallsamples/samplesmall-auth1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d1/Smallsamples/samplesmall-auth1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d1/Smallsamples/samplesmall-auth1.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d1/Smallsamples/samplesmall-auth1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d2/Smallsamples/samplesmall-auth1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d2/Smallsamples/samplesmall-auth1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d2/Smallsamples/samplesmall-auth1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d2/Smallsamples/samplesmall-auth1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d2/Smallsamples/samplesmall-auth1.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d2/Smallsamples/samplesmall-auth1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d3/Smallsamples/samplesmall-auth1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d3/Smallsamples/samplesmall-auth1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d3/Smallsamples/samplesmall-auth1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d3/Smallsamples/samplesmall-auth1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/articleauthoring/1.1d3/Smallsamples/samplesmall-auth1.xml" do
    let(:fixture) { file_fixture("niso-jats/articleauthoring/1.1d3/Smallsamples/samplesmall-auth1.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/publishing/0.4/Smallsamples/samplesmall-pub0-oasis.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/0.4/Smallsamples/samplesmall-pub0-oasis.xml") }
    it_behaves_like "a serializer"
  end

  xcontext "with niso-jats/publishing/0.4/Smallsamples/samplesmall-pub0.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/0.4/Smallsamples/samplesmall-pub0.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.0/Smallsamples/samplepub-oasis-and-xhtml1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.0/Smallsamples/samplepub-oasis-and-xhtml1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.0/Smallsamples/samplepub-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.0/Smallsamples/samplepub-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.0/Smallsamples/samplesmall-base1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.0/Smallsamples/samplesmall-base1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.0/Smallsamples/samplesmall-pub1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.0/Smallsamples/samplesmall-pub1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d1/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d1/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d1/Smallsamples/samplepub-oasis-and-xhtml1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d1/Smallsamples/samplepub-oasis-and-xhtml1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d1/Smallsamples/samplepub-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d1/Smallsamples/samplepub-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d1/Smallsamples/samplesmall-pub1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d1/Smallsamples/samplesmall-pub1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d1/Smallsamples/samplesmall-pub1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d1/Smallsamples/samplesmall-pub1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-and-xhtml1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-and-xhtml1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-and-xhtml1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-and-xhtml1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplepub-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplesmall-pub1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplesmall-pub1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplesmall-pub1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplesmall-pub1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d2/Smallsamples/samplesmall-pub1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d2/Smallsamples/samplesmall-pub1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/journal.elementa.000011.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/journal.elementa.000011.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/journal.elementa.000012.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/journal.elementa.000012.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/journal.elementa.000017.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/journal.elementa.000017.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-and-xhtml1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-and-xhtml1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-and-xhtml1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-and-xhtml1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-table1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplepub-oasis-table1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplesmall-pub1-mathml3-bad.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplesmall-pub1-mathml3-bad.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplesmall-pub1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplesmall-pub1-mathml3.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.1d3/Smallsamples/samplesmall-pub1.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.1d3/Smallsamples/samplesmall-pub1.xml") }
    it_behaves_like "a serializer"
  end

  context "with niso-jats/publishing/1.2d1/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml" do
    let(:fixture) { file_fixture("niso-jats/publishing/1.2d1/Smallsamples/samplepub-oasis-and-xhtml1-mathml3.xml") }
    it_behaves_like "a serializer"
  end
end
