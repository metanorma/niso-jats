RSpec.describe Niso::Jats::ContribModel do
  let(:xml) { File.read("spec/fixtures/niso-jats/met_52_1_155.xml") }
  subject { Niso::Jats::Article.from_xml(xml).front.article_meta.contrib_group[0].contrib[0] }

  it "aff_xref" do
    expect(subject.aff_xref[0]).to be_instance_of(Niso::Jats::Xref)
  end
end
