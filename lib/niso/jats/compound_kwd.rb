# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class CompoundKwd < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string
      attribute :compound_kwd_part, CompoundKwdPart, collection: true

      xml do
        root "compound-kwd"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
        map_element "compound-kwd-part", to: :compound_kwd_part
      end
    end
  end
end
