# frozen_string_literal: true

module Niso
  module Jats
    class GlyphRef < Lutaml::Model::Serializable
      attribute :glyph_data, :string
      attribute :id, :string

      xml do
        root "glyph-ref"

        map_attribute "glyph-data", to: :glyph_data
        map_attribute "id", to: :id
      end
    end
  end
end
