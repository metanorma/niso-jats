# frozen_string_literal: true

module Niso
  module Jats
    class Article < Lutaml::Model::Serializable
      attribute :article_type, :string
      attribute :dtd_version, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string, default: -> { "en" }
      attribute :processing_meta, ProcessingMeta
      attribute :front, Front
      attribute :body, Body
      attribute :back, Back
      attribute :floats_group, FloatsGroup
      attribute :sub_article, SubArticle, collection: true
      attribute :response, Response, collection: true

      xml do
        root "article"

        map_attribute "article-type", to: :article_type
        map_attribute "dtd-version", to: :dtd_version
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "processing-meta", to: :processing_meta
        map_element "front", to: :front
        map_element "body", to: :body
        map_element "back", to: :back
        map_element "floats-group", to: :floats_group
        map_element "sub-article", to: :sub_article
        map_element "response", to: :response
      end
    end
  end
end
