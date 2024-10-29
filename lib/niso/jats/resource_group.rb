# frozen_string_literal: true

module Niso
  module Jats
    class ResourceGroup < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :resource_name, ResourceName, collection: true
      attribute :resource_wrap, ResourceWrap, collection: true

      xml do
        root "resource-group"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "resource-name", to: :resource_name
        map_element "resource-wrap", to: :resource_wrap
      end
    end
  end
end
