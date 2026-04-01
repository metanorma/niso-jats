# frozen_string_literal: true

RSpec.describe Niso::Jats::Article do
  describe "Metrologia JATS v1.1 parsing (met_52_1_155.xml)" do
    subject { described_class.from_xml(file_fixture("met_52_1_155.xml").read) }

    it "extracts the journal title" do
      expect(subject.journal_title).to eq("Metrologia")
    end

    it "extracts the DOI" do
      expect(subject.doi).to eq("10.1088/0026-1394/52/1/155")
    end

    it "extracts contributors" do
      contribs = subject.contributors
      expect(contribs.size).to eq(5)
      expect(contribs.first.contrib_type).to eq("author")
      expect(contribs.first.name.first.surname.content).to eq("Los Arcos")
    end

    it "looks up affiliations by id" do
      affs = subject.affiliation("affiliation01")
      expect(affs.size).to eq(1)
      expect(affs.first.id).to eq("affiliation01")
    end

    it "extracts formatted publication dates" do
      expect(subject.pub_dates).to eq(["2015-02-01", "2015-01-30"])
    end

    it "extracts locality (volume, issue, pages)" do
      expect(subject.locality).to eq(
        [
          ["volume", "52"],
          ["issue", "1"],
          ["page", "155", "162"],
        ],
      )
    end

    it "extracts DOI links" do
      url = "https://doi.org/10.1088/0026-1394/52/1/155"
      expect(subject.doi_links).to eq(
        [
          { content: url, type: "src" },
          { content: url, type: "doi" },
        ],
      )
    end

    it "returns contributor affiliation cross-references" do
      xrefs = subject.contributors.first.aff_xrefs
      expect(xrefs.size).to eq(1)
      expect(xrefs.first.ref_type).to eq("aff")
      expect(xrefs.first.rid).to eq("affiliation01")
    end
  end

  describe "Metrologia JATS v1.1 parsing (metv9i4p155.xml)" do
    subject { described_class.from_xml(file_fixture("metv9i4p155.xml").read) }

    it "extracts the DOI" do
      expect(subject.doi).to eq("10.1088/0026-1394/9/4/003")
    end

    it "extracts locality (volume, issue, pages)" do
      expect(subject.locality).to eq(
        [
          ["volume", "9"],
          ["issue", "4"],
          ["page", "155", "166"],
        ],
      )
    end
  end
end
