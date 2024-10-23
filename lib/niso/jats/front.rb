# frozen_string_literal: true

module Niso
  module Jats
    class Front < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :journal_meta, JournalMeta
      attribute :article_meta, ArticleMeta
      attribute :notes, Notes

      xml do
        root "front"

        map_attribute "id", to: :id
        map_element "journal-meta", to: :journal_meta
        map_element "article-meta", to: :article_meta
        map_element "notes", to: :notes
      end
    end
  end
end
