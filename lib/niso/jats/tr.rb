# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Tr < Lutaml::Model::Serializable
      attribute :align, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :style, :string
      attribute :valign, :string
      attribute :th, Th, collection: true
      attribute :td, Td, collection: true

      xml do
        root "tr"

        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "style", to: :style
        map_attribute "valign", to: :valign
        map_element "th", to: :th
        map_element "td", to: :td
      end
    end
  end
end
