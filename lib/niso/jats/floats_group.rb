# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class FloatsGroup < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :alternatives, Alternatives, collection: true
      attribute :block_alternatives, BlockAlternatives, collection: true
      attribute :boxed_text, BoxedText, collection: true
      attribute :chem_struct_wrap, ChemStructWrap, collection: true
      attribute :code, Code, collection: true
      attribute :fig, Fig, collection: true
      attribute :fig_group, FigGroup, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :supplementary_material, SupplementaryMaterial, collection: true
      attribute :table_wrap, TableWrap, collection: true
      attribute :table_wrap_group, TableWrapGroup, collection: true

      xml do
        root "floats-group"

        map_attribute "id", to: :id
        map_element "alternatives", to: :alternatives
        map_element "block-alternatives", to: :block_alternatives
        map_element "boxed-text", to: :boxed_text
        map_element "chem-struct-wrap", to: :chem_struct_wrap
        map_element "code", to: :code
        map_element "fig", to: :fig
        map_element "fig-group", to: :fig_group
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "supplementary-material", to: :supplementary_material
        map_element "table-wrap", to: :table_wrap
        map_element "table-wrap-group", to: :table_wrap_group
      end
    end
  end
end
