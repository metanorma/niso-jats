# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class ListItem < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :title, Title
      attribute :p, Paragraph, collection: true
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true

      xml do
        root "list-item"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "p", to: :p
        map_element "def-list", to: :def_list
        map_element "list", to: :list
      end
    end
  end
end
