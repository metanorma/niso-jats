# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class TableWrapFoot < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :title, Title
      attribute :p, Paragraph, collection: true
      attribute :fn_group, FnGroup, collection: true
      attribute :fn, Fn, collection: true
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true

      xml do
        root "table-wrap-foot"

        map_attribute "id", to: :id
        map_element "title", to: :title
        map_element "p", to: :p
        map_element "fn-group", to: :fn_group
        map_element "fn", to: :fn
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
      end
    end
  end
end
