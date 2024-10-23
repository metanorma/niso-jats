# frozen_string_literal: true

module Niso
  module Jats
    class CustomMeta < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string
      attribute :lang, :string
      attribute :meta_name, MetaName
      attribute :meta_value, MetaValue

      xml do
        root "custom-meta"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
        map_attribute "lang", to: :lang
        map_element "meta-name", to: :meta_name
        map_element "meta-value", to: :meta_value
      end
    end
  end
end
