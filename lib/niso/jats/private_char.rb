# frozen_string_literal: true

module Niso
  module Jats
    class PrivateChar < Lutaml::Model::Serializable
      attribute :description, :string
      attribute :id, :string
      attribute :name, :string
      attribute :specific_use, :string
      attribute :glyph_data, GlyphData
      attribute :glyph_ref, GlyphRef
      attribute :inline_graphic, InlineGraphic, collection: true

      xml do
        root "private-char"

        map_attribute "description", to: :description
        map_attribute "id", to: :id
        map_attribute "name", to: :name
        map_attribute "specific-use", to: :specific_use
        map_element "glyph-data", to: :glyph_data
        map_element "glyph-ref", to: :glyph_ref
        map_element "inline-graphic", to: :inline_graphic
      end
    end
  end
end
