# frozen_string_literal: true

module Niso
  module Jats
    class UnstructuredKwdGroup < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :id, :string
      attribute :kwd_group_type, :string
      attribute :specific_use, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :lang, :string

      xml do
        root "unstructured-kwd-group"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "id", to: :id
        map_attribute "kwd-group-type", to: :kwd_group_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "lang", to: :lang
      end
    end
  end
end
