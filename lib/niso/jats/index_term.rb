# frozen_string_literal: true

module Niso
  module Jats
    class IndexTerm < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :index_type, :string
      attribute :specific_use, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string
      attribute :lang, :string
      attribute :term, Term
      attribute :index_term, IndexTerm
      attribute :see, See, collection: true
      attribute :see_also, SeeAlso, collection: true

      xml do
        root "index-term"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "index-type", to: :index_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
        map_attribute "lang", to: :lang
        map_element "term", to: :term
        map_element "index-term", to: :index_term
        map_element "see", to: :see
        map_element "see-also", to: :see_also
      end
    end
  end
end
