# frozen_string_literal: true

module Niso
  module Jats
    class GlyphData < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :fontchar, :string
      attribute :fontname, :string
      attribute :format, :string
      attribute :id, :string
      attribute :resolution, :string
      attribute :x_size, :string
      attribute :y_size, :string

      xml do
        root "glyph-data"

        map_content to: :content
        map_attribute "fontchar", to: :fontchar
        map_attribute "fontname", to: :fontname
        map_attribute "format", to: :format
        map_attribute "id", to: :id
        map_attribute "resolution", to: :resolution
        map_attribute "x-size", to: :x_size
        map_attribute "y-size", to: :y_size
      end
    end
  end
end
