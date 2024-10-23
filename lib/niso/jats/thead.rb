# frozen_string_literal: true

module Niso
  module Jats
    class Thead < Lutaml::Model::Serializable
      attribute :align, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :style, :string
      attribute :valign, :string
      attribute :tr, Tr, collection: true

      xml do
        root "thead"

        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "style", to: :style
        map_attribute "valign", to: :valign
        map_element "tr", to: :tr
      end
    end
  end
end
