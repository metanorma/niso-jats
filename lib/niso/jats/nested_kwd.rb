# frozen_string_literal: true

module Niso
  module Jats
    class NestedKwd < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string
      attribute :kwd, Kwd, collection: true
      attribute :compound_kwd, CompoundKwd, collection: true
      attribute :nested_kwd, NestedKwd, collection: true

      xml do
        root "nested-kwd"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
        map_element "kwd", to: :kwd
        map_element "compound-kwd", to: :compound_kwd
        map_element "nested-kwd", to: :nested_kwd
      end
    end
  end
end
