# frozen_string_literal: true

module Niso
  module Jats
    class EventDesc < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :article_id, ArticleId, collection: true
      attribute :issn, Issn, collection: true
      attribute :issn_l, IssnL, collection: true
      attribute :isbn, Isbn, collection: true
      attribute :article_version, ArticleVersion, collection: true
      attribute :article_version_alternatives, ArticleVersionAlternatives,
                collection: true
      attribute :date, Date, collection: true
      attribute :string_date, StringDate, collection: true
      attribute :pub_date, PubDate, collection: true
      attribute :pub_date_not_available, PubDateNotAvailable, collection: true

      xml do
        root "event-desc"

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "article-id", to: :article_id
        map_element "issn", to: :issn
        map_element "issn-l", to: :issn_l
        map_element "isbn", to: :isbn
        map_element "article-version", to: :article_version
        map_element "article-version-alternatives",
                    to: :article_version_alternatives
        map_element "date", to: :date
        map_element "string-date", to: :string_date
        map_element "pub-date", to: :pub_date
        map_element "pub-date-not-available", to: :pub_date_not_available
      end
    end
  end
end
