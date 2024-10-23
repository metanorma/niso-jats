# frozen_string_literal: true

module Niso
  module Jats
    class ArticleVersion < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :article_version_type, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :designator, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :iso_8601_date, :string
      attribute :specific_use, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string

      xml do
        root "article-version"

        map_content to: :content
        map_attribute "article-version-type", to: :article_version_type
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "designator", to: :designator
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "iso-8601-date", to: :iso_8601_date
        map_attribute "specific-use", to: :specific_use
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
      end
    end
  end
end
