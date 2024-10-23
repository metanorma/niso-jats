# frozen_string_literal: true

module Niso
  module Jats
    class InstitutionId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :institution_id_type, :string
      attribute :specific_use, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :lang, :string

      xml do
        root "institution-id"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "institution-id-type", to: :institution_id_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "lang", to: :lang
      end
    end
  end
end
