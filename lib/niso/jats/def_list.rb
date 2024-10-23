# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class DefList < Lutaml::Model::Serializable
      attribute :continued_from, :string
      attribute :id, :string
      attribute :list_content, :string
      attribute :list_type, :string
      attribute :prefix_word, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :title, Title
      attribute :term_head, TermHead
      attribute :def_head, DefHead
      attribute :def_item, DefItem, collection: true
      attribute :def_list, DefList, collection: true

      xml do
        root "def-list"

        map_attribute "continued-from", to: :continued_from
        map_attribute "id", to: :id
        map_attribute "list-content", to: :list_content
        map_attribute "list-type", to: :list_type
        map_attribute "prefix-word", to: :prefix_word
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "term-head", to: :term_head
        map_element "def-head", to: :def_head
        map_element "def-item", to: :def_item
        map_element "def-list", to: :def_list
      end
    end
  end
end
