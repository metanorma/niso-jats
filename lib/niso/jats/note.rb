# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Note < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :p, Paragraph, collection: true
      attribute :product, Product, collection: true

      xml do
        root "note"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "p", to: :p
        map_element "product", to: :product
      end
    end
  end
end
