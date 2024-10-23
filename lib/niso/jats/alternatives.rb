# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Alternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :object_id, ObjectId, collection: true
      attribute :array, Array, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :code, Code, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :inline_supplementary_material, InlineSupplementaryMaterial, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :supplementary_material, SupplementaryMaterial, collection: true
      attribute :table, Table, collection: true
      attribute :textual_form, TextualForm, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, :string, collection: true

      xml do
        root "alternatives"

        map_attribute "id", to: :id
        map_element "object-id", to: :object_id
        map_element "array", to: :array
        map_element "chem-struct", to: :chem_struct
        map_element "code", to: :code
        map_element "graphic", to: :graphic
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "inline-supplementary-material", to: :inline_supplementary_material
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "private-char", to: :private_char
        map_element "supplementary-material", to: :supplementary_material
        map_element "table", to: :table
        map_element "textual-form", to: :textual_form
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
      end
    end
  end
end
