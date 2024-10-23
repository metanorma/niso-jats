# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class FrontStub < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :article_id, ArticleId, collection: true
      attribute :article_version, ArticleVersion
      attribute :article_version_alternatives, ArticleVersionAlternatives
      attribute :article_categories, ArticleCategories
      attribute :title_group, TitleGroup
      attribute :contrib_group, ContribGroup, collection: true
      attribute :aff, Aff, collection: true
      attribute :aff_alternatives, AffAlternatives, collection: true
      attribute :author_notes, AuthorNotes
      attribute :pub_date, PubDate, collection: true
      attribute :pub_date_not_available, PubDateNotAvailable
      attribute :volume, Volume, collection: true
      attribute :volume_id, VolumeId, collection: true
      attribute :volume_series, VolumeSeries
      attribute :issue, Issue, collection: true
      attribute :issue_id, IssueId, collection: true
      attribute :issue_title, IssueTitle, collection: true
      attribute :issue_title_group, IssueTitleGroup, collection: true
      attribute :issue_sponsor, IssueSponsor, collection: true
      attribute :issue_part, IssuePart
      attribute :volume_issue_group, VolumeIssueGroup, collection: true
      attribute :isbn, Isbn, collection: true
      attribute :supplement, Supplement
      attribute :fpage, Fpage
      attribute :lpage, Lpage
      attribute :page_range, PageRange
      attribute :elocation_id, ElocationId
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :product, Product, collection: true
      attribute :supplementary_material, SupplementaryMaterial, collection: true
      attribute :history, History
      attribute :pub_history, PubHistory
      attribute :permissions, Permissions
      attribute :self_uri, SelfUri, collection: true
      attribute :related_article, RelatedArticle, collection: true
      attribute :related_object, RelatedObject, collection: true
      attribute :abstract, Abstract, collection: true
      attribute :trans_abstract, TransAbstract, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :funding_group, FundingGroup, collection: true
      attribute :support_group, SupportGroup, collection: true
      attribute :conference, Conference, collection: true
      attribute :counts, Counts
      attribute :custom_meta_group, CustomMetaGroup

      xml do
        root "front-stub"

        map_attribute "id", to: :id
        map_element "article-id", to: :article_id
        map_element "article-version", to: :article_version
        map_element "article-version-alternatives", to: :article_version_alternatives
        map_element "article-categories", to: :article_categories
        map_element "title-group", to: :title_group
        map_element "contrib-group", to: :contrib_group
        map_element "aff", to: :aff
        map_element "aff-alternatives", to: :aff_alternatives
        map_element "author-notes", to: :author_notes
        map_element "pub-date", to: :pub_date
        map_element "pub-date-not-available", to: :pub_date_not_available
        map_element "volume", to: :volume
        map_element "volume-id", to: :volume_id
        map_element "volume-series", to: :volume_series
        map_element "issue", to: :issue
        map_element "issue-id", to: :issue_id
        map_element "issue-title", to: :issue_title
        map_element "issue-title-group", to: :issue_title_group
        map_element "issue-sponsor", to: :issue_sponsor
        map_element "issue-part", to: :issue_part
        map_element "volume-issue-group", to: :volume_issue_group
        map_element "isbn", to: :isbn
        map_element "supplement", to: :supplement
        map_element "fpage", to: :fpage
        map_element "lpage", to: :lpage
        map_element "page-range", to: :page_range
        map_element "elocation-id", to: :elocation_id
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "product", to: :product
        map_element "supplementary-material", to: :supplementary_material
        map_element "history", to: :history
        map_element "pub-history", to: :pub_history
        map_element "permissions", to: :permissions
        map_element "self-uri", to: :self_uri
        map_element "related-article", to: :related_article
        map_element "related-object", to: :related_object
        map_element "abstract", to: :abstract
        map_element "trans-abstract", to: :trans_abstract
        map_element "kwd-group", to: :kwd_group
        map_element "funding-group", to: :funding_group
        map_element "support-group", to: :support_group
        map_element "conference", to: :conference
        map_element "counts", to: :counts
        map_element "custom-meta-group", to: :custom_meta_group
      end
    end
  end
end
