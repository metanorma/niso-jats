# frozen_string_literal: true

module Niso
  module Jats
    class KwdGroup < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :id, :string
      attribute :kwd_group_type, :string
      attribute :specific_use, :string
      attribute :vocab, :string
      attribute :vocab_identifier, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :title, Title
      attribute :kwd, Kwd, collection: true
      attribute :compound_kwd, CompoundKwd, collection: true
      attribute :nested_kwd, NestedKwd, collection: true

      xml do
        root "kwd-group"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "id", to: :id
        map_attribute "kwd-group-type", to: :kwd_group_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "vocab", to: :vocab
        map_attribute "vocab-identifier", to: :vocab_identifier
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "kwd", to: :kwd
        map_element "compound-kwd", to: :compound_kwd
        map_element "nested-kwd", to: :nested_kwd
      end
    end
  end
end
