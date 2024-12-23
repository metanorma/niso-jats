RSpec.describe Niso::Jats::ArticleTitle do
  subject do
    described_class.from_xml <<-XML
      <article-title id="title1" xml:lang="en">The Role and Policy of  <italic>Metrologia</italic>
      </article-title>
    XML
  end

  it "parses the content" do
    expect(subject.content).to include("The Role and Policy of  <italic>Metrologia</italic>")
  end

  it "parses the language" do
    expect(subject.lang).to eq("en")
  end

  it "parses the id" do
    expect(subject.id).to eq("title1")
  end
end
