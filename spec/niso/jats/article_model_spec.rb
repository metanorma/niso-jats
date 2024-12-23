RSpec.describe Niso::Jats::ArticleModel do
  let(:xml) { file_fixture("met_52_1_155.xml").read }
  subject { Niso::Jats::Article.from_xml(xml) }

  it "jornal title" do
    expect(subject.journal_title).to eq("Metrologia")
  end

  it "DOI" do
    expect(subject.doi).to eq("10.1088/0026-1394/52/1/155")
  end

  context "title" do
    let(:xml) { file_fixture("metv9i4p155.xml").read }

    it do
      expect(subject.title).to eq [
        { content: "Volt Maintenance at NBS via 2<italic>e/h</italic>: A New Definition of the NBS Volt",
          format: "text/html", language: "en", script: "Latn" },
      ]
    end
  end

  context "date" do
    it { expect(subject.date).to eq ["2015-02-01", "2015-01-30"] }

    it "yields date string and pub_type" do
      expect { |b| subject.date(&b) }.to yield_successive_args(["2015-02-01", "ppub"], ["2015-01-30", "epub"])
    end
  end

  it "contributor" do
    expect(subject.contributor[0]).to be_instance_of(Niso::Jats::ContribModel)
  end

  it "affiliation" do
    expect(subject.affiliation("affiliation01")[0]).to be_instance_of(Niso::Jats::Aff)
  end

  it "locality" do
    expect(subject.locality).to eq [["volume", "52"], ["issue", "1"], ["page", "155", "162"]]
  end

  it "link" do
    expect(subject.link).to eq [
      { content: "https://doi.org/10.1088/0026-1394/52/1/155", type: "src" },
      { content: "https://doi.org/10.1088/0026-1394/52/1/155", type: "doi"},
    ]
  end
end
