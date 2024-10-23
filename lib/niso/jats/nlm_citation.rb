# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class NlmCitation < Lutaml::Model::Serializable
      attribute :hreflang, :string
      attribute :id, :string
      attribute :publication_format, :string
      attribute :publication_type, :string
      attribute :publisher_type, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :person_group, PersonGroup, collection: true
      attribute :collab, Collab, collection: true
      attribute :article_title, ArticleTitle, collection: true
      attribute :trans_title, TransTitle, collection: true
      attribute :source, Source
      attribute :patent, Patent
      attribute :trans_source, TransSource
      attribute :year, Year
      attribute :month, Month
      attribute :day, Day
      attribute :time_stamp, TimeStamp
      attribute :season, Season
      attribute :access_date, AccessDate
      attribute :volume, Volume
      attribute :edition, Edition
      attribute :conf_name, ConfName
      attribute :conf_date, ConfDate
      attribute :conf_loc, ConfLoc
      attribute :issue, Issue, collection: true
      attribute :supplement, Supplement, collection: true
      attribute :publisher_loc, PublisherLoc
      attribute :publisher_name, PublisherName
      attribute :fpage, Fpage, collection: true
      attribute :lpage, Lpage, collection: true
      attribute :page_count, PageCount
      attribute :series, Series
      attribute :comment, Comment, collection: true
      attribute :pub_id, PubId, collection: true
      attribute :annotation, Annotation

      xml do
        root "nlm-citation"

        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "publication-format", to: :publication_format
        map_attribute "publication-type", to: :publication_type
        map_attribute "publisher-type", to: :publisher_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "person-group", to: :person_group
        map_element "collab", to: :collab
        map_element "article-title", to: :article_title
        map_element "trans-title", to: :trans_title
        map_element "source", to: :source
        map_element "patent", to: :patent
        map_element "trans-source", to: :trans_source
        map_element "year", to: :year
        map_element "month", to: :month
        map_element "day", to: :day
        map_element "time-stamp", to: :time_stamp
        map_element "season", to: :season
        map_element "access-date", to: :access_date
        map_element "volume", to: :volume
        map_element "edition", to: :edition
        map_element "conf-name", to: :conf_name
        map_element "conf-date", to: :conf_date
        map_element "conf-loc", to: :conf_loc
        map_element "issue", to: :issue
        map_element "supplement", to: :supplement
        map_element "publisher-loc", to: :publisher_loc
        map_element "publisher-name", to: :publisher_name
        map_element "fpage", to: :fpage
        map_element "lpage", to: :lpage
        map_element "page-count", to: :page_count
        map_element "series", to: :series
        map_element "comment", to: :comment
        map_element "pub-id", to: :pub_id
        map_element "annotation", to: :annotation
      end
    end
  end
end
