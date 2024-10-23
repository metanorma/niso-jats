# frozen_string_literal: true

module Niso
  module Jats
    class JournalId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :id, :string
      attribute :journal_id_type, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "journal-id"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "id", to: :id
        map_attribute "journal-id-type", to: :journal_id_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
      end
    end
  end
end
