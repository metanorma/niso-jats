# frozen_string_literal: true

module Niso
  module Jats
    class MixedCitation < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :publication_format, :string
      attribute :publication_type, :string
      attribute :publisher_type, :string
      attribute :specific_use, :string
      attribute :use_type, :string
      attribute :lang, :string
      attribute :bold, Bold, collection: true
      attribute :fixed_case, FixedCase, collection: true
      attribute :italic, Italic, collection: true
      attribute :monospace, Monospace, collection: true
      attribute :overline, Overline, collection: true
      attribute :roman, Roman, collection: true
      attribute :sans_serif, SansSerif, collection: true
      attribute :sc, Sc, collection: true
      attribute :strike, Strike, collection: true
      attribute :underline, Underline, collection: true
      attribute :ruby, Ruby, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :inline_formula, InlineFormula, collection: true
      attribute :label, Label, collection: true
      attribute :abbrev, Abbrev, collection: true
      attribute :index_term, IndexTerm, collection: true
      attribute :index_term_range_end, IndexTermRangeEnd, collection: true
      attribute :milestone_end, MilestoneEnd, collection: true
      attribute :milestone_start, MilestoneStart, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :annotation, Annotation, collection: true
      attribute :article_title, ArticleTitle, collection: true
      attribute :chapter_title, ChapterTitle, collection: true
      attribute :collab, Collab, collection: true
      attribute :collab_alternatives, CollabAlternatives, collection: true
      attribute :comment, Comment, collection: true
      attribute :conf_acronym, ConfAcronym, collection: true
      attribute :conf_date, ConfDate, collection: true
      attribute :conf_loc, ConfLoc, collection: true
      attribute :conf_name, ConfName, collection: true
      attribute :conf_sponsor, ConfSponsor, collection: true
      attribute :data_title, DataTitle, collection: true
      attribute :date, Date, collection: true
      attribute :date_in_citation, DateInCitation, collection: true
      attribute :day, Day, collection: true
      attribute :edition, Edition, collection: true
      attribute :email, Email, collection: true
      attribute :elocation_id, ElocationId, collection: true
      attribute :etal, Etal, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :fpage, Fpage, collection: true
      attribute :gov, Gov, collection: true
      attribute :institution, Institution, collection: true
      attribute :institution_wrap, InstitutionWrap, collection: true
      attribute :isbn, Isbn, collection: true
      attribute :issn, Issn, collection: true
      attribute :issn_l, IssnL, collection: true
      attribute :issue, Issue, collection: true
      attribute :issue_id, IssueId, collection: true
      attribute :issue_part, IssuePart, collection: true
      attribute :issue_title, IssueTitle, collection: true
      attribute :lpage, Lpage, collection: true
      attribute :month, Month, collection: true
      attribute :name, Name, collection: true
      attribute :name_alternatives, NameAlternatives, collection: true
      attribute :object_id, ObjectId, collection: true
      attribute :page_range, PageRange, collection: true
      attribute :part_title, PartTitle, collection: true
      attribute :patent, Patent, collection: true
      attribute :person_group, PersonGroup, collection: true
      attribute :pub_id, PubId, collection: true
      attribute :publisher_loc, PublisherLoc, collection: true
      attribute :publisher_name, PublisherName, collection: true
      attribute :role, Role, collection: true
      attribute :season, Season, collection: true
      attribute :series, Series, collection: true
      attribute :size, Size, collection: true
      attribute :source, Source, collection: true
      attribute :std, Std, collection: true
      attribute :string_date, StringDate, collection: true
      attribute :string_name, StringName, collection: true
      attribute :supplement, Supplement, collection: true
      attribute :trans_source, TransSource, collection: true
      attribute :trans_title, TransTitle, collection: true
      attribute :uri, Uri, collection: true
      attribute :version, VersionElement, collection: true
      attribute :volume, Volume, collection: true
      attribute :volume_id, VolumeId, collection: true
      attribute :volume_series, VolumeSeries, collection: true
      attribute :year, Year, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "mixed-citation"

        map_content to: :content
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "publication-format", to: :publication_format
        map_attribute "publication-type", to: :publication_type
        map_attribute "publisher-type", to: :publisher_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "use-type", to: :use_type
        map_attribute "lang", to: :lang
        map_element "bold", to: :bold
        map_element "fixed-case", to: :fixed_case
        map_element "italic", to: :italic
        map_element "monospace", to: :monospace
        map_element "overline", to: :overline
        map_element "roman", to: :roman
        map_element "sans-serif", to: :sans_serif
        map_element "sc", to: :sc
        map_element "strike", to: :strike
        map_element "underline", to: :underline
        map_element "ruby", to: :ruby
        map_element "alternatives", to: :alternatives
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "label", to: :label
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "annotation", to: :annotation
        map_element "article-title", to: :article_title
        map_element "chapter-title", to: :chapter_title
        map_element "collab", to: :collab
        map_element "collab-alternatives", to: :collab_alternatives
        map_element "comment", to: :comment
        map_element "conf-acronym", to: :conf_acronym
        map_element "conf-date", to: :conf_date
        map_element "conf-loc", to: :conf_loc
        map_element "conf-name", to: :conf_name
        map_element "conf-sponsor", to: :conf_sponsor
        map_element "data-title", to: :data_title
        map_element "date", to: :date
        map_element "date-in-citation", to: :date_in_citation
        map_element "day", to: :day
        map_element "edition", to: :edition
        map_element "email", to: :email
        map_element "elocation-id", to: :elocation_id
        map_element "etal", to: :etal
        map_element "ext-link", to: :ext_link
        map_element "fpage", to: :fpage
        map_element "gov", to: :gov
        map_element "institution", to: :institution
        map_element "institution-wrap", to: :institution_wrap
        map_element "isbn", to: :isbn
        map_element "issn", to: :issn
        map_element "issn-l", to: :issn_l
        map_element "issue", to: :issue
        map_element "issue-id", to: :issue_id
        map_element "issue-part", to: :issue_part
        map_element "issue-title", to: :issue_title
        map_element "lpage", to: :lpage
        map_element "month", to: :month
        map_element "name", to: :name
        map_element "name-alternatives", to: :name_alternatives
        map_element "object-id", to: :object_id
        map_element "page-range", to: :page_range
        map_element "part-title", to: :part_title
        map_element "patent", to: :patent
        map_element "person-group", to: :person_group
        map_element "pub-id", to: :pub_id
        map_element "publisher-loc", to: :publisher_loc
        map_element "publisher-name", to: :publisher_name
        map_element "role", to: :role
        map_element "season", to: :season
        map_element "series", to: :series
        map_element "size", to: :size
        map_element "source", to: :source
        map_element "std", to: :std
        map_element "string-date", to: :string_date
        map_element "string-name", to: :string_name
        map_element "supplement", to: :supplement
        map_element "trans-source", to: :trans_source
        map_element "trans-title", to: :trans_title
        map_element "uri", to: :uri
        map_element "version", to: :version
        map_element "volume", to: :volume
        map_element "volume-id", to: :volume_id
        map_element "volume-series", to: :volume_series
        map_element "year", to: :year
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
