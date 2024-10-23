# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class BlockAlternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :object_id, ObjectId, collection: true
      attribute :boxed_text, BoxedText, collection: true
      attribute :fig, Fig, collection: true
      attribute :fig_group, FigGroup, collection: true
      attribute :table_wrap, TableWrap, collection: true
      attribute :table_wrap_group, TableWrapGroup, collection: true

      xml do
        root "block-alternatives"

        map_attribute "id", to: :id
        map_element "object-id", to: :object_id
        map_element "boxed-text", to: :boxed_text
        map_element "fig", to: :fig
        map_element "fig-group", to: :fig_group
        map_element "table-wrap", to: :table_wrap
        map_element "table-wrap-group", to: :table_wrap_group
      end
    end
  end
end
