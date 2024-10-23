# frozen_string_literal: true

module Niso
  module Jats
    class ExtendedBy < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :designator, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string

      xml do
        root "extended-by"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "designator", to: :designator
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
      end
    end
  end
end
