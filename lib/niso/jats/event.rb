# frozen_string_literal: true

module Niso
  module Jats
    class Event < Lutaml::Model::Serializable
      attribute :event_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :event_desc, EventDesc
      attribute :article_id, ArticleId, collection: true
      attribute :article_version, ArticleVersion
      attribute :article_version_alternatives, ArticleVersionAlternatives
      attribute :pub_date, PubDate, collection: true
      attribute :pub_date_not_available, PubDateNotAvailable
      attribute :date, Date, collection: true
      attribute :issn, Issn, collection: true
      attribute :issn_l, IssnL
      attribute :isbn, Isbn, collection: true
      attribute :permissions, Permissions
      attribute :notes, Notes, collection: true
      attribute :self_uri, SelfUri, collection: true

      xml do
        root "event"

        map_attribute "event-type", to: :event_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "event-desc", to: :event_desc
        map_element "article-id", to: :article_id
        map_element "article-version", to: :article_version
        map_element "article-version-alternatives",
                    to: :article_version_alternatives
        map_element "pub-date", to: :pub_date
        map_element "pub-date-not-available", to: :pub_date_not_available
        map_element "date", to: :date
        map_element "issn", to: :issn
        map_element "issn-l", to: :issn_l
        map_element "isbn", to: :isbn
        map_element "permissions", to: :permissions
        map_element "notes", to: :notes
        map_element "self-uri", to: :self_uri
      end
    end
  end
end
