# frozen_string_literal: true

module Niso
  module Jats
    class Edition < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :designator, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "edition", mixed: true

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "designator", to: :designator
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
