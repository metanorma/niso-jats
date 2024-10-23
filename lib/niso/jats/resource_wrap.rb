# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class ResourceWrap < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :resource_name, ResourceName
      attribute :resource_id, ResourceId, collection: true

      xml do
        root "resource-wrap"

        map_attribute "id", to: :id
        map_element "resource-name", to: :resource_name
        map_element "resource-id", to: :resource_id
      end
    end
  end
end
