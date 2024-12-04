# frozen_string_literal: true

module Niso
  module Jats
    class DefItem < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :term, Term
      attribute :def, Def, collection: true
      attribute :label, :string

      xml do
        root "def-item", mixed: true

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "term", to: :term
        map_element "def", to: :def
        map_element "label", to: :label
      end
    end
  end
end
