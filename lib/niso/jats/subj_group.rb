# frozen_string_literal: true

module Niso
  module Jats
    class SubjGroup < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :subj_group_type, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :lang, :string
      attribute :subject, Subject, collection: true
      attribute :compound_subject, CompoundSubject, collection: true
      attribute :subj_group, SubjGroup, collection: true

      xml do
        root "subj-group"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "subj-group-type", to: :subj_group_type
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "lang", to: :lang
        map_element "subject", to: :subject
        map_element "compound-subject", to: :compound_subject
        map_element "subj-group", to: :subj_group
      end
    end
  end
end
