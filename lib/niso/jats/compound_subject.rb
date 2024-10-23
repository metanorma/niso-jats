# frozen_string_literal: true

module Niso
  module Jats
    class CompoundSubject < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :vocab_term, :string
      attribute :vocab_term_identifier, :string
      attribute :compound_subject_part, CompoundSubjectPart, collection: true

      xml do
        root "compound-subject"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "vocab-term", to: :vocab_term
        map_attribute "vocab-term-identifier", to: :vocab_term_identifier
        map_element "compound-subject-part", to: :compound_subject_part
      end
    end
  end
end
