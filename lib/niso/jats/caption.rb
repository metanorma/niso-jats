# frozen_string_literal: true

module Niso
  module Jats
    class Caption < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :style, :string
      attribute :lang, :string
      attribute :base, :string
      attribute :title, Title
      attribute :p, Paragraph, collection: true

      xml do
        root "caption"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "base", to: :base, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_attribute "specific-use", to: :specific_use
        map_attribute "style", to: :style
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "title", to: :title
        map_element "p", to: :p
      end
    end
  end
end
