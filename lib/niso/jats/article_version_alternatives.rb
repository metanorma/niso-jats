# frozen_string_literal: true

module Niso
  module Jats
    class ArticleVersionAlternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :article_version, ArticleVersion, collection: true

      xml do
        root "article-version-alternatives"

        map_attribute "id", to: :id
        map_element "article-version", to: :article_version
      end
    end
  end
end
