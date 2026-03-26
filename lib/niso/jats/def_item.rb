# frozen_string_literal: true

module Niso
  module Jats
    class DefItem < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :xml_lang
      attribute :label, :string
      attribute :term, Term
      attribute :def, Def, collection: true

      xml do
        element "def-item"
        ordered

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "term", to: :term
        map_element "def", to: :def
      end
    end
  end
end
