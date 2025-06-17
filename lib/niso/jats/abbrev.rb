# frozen_string_literal: true

module Niso
  module Jats
    class Abbrev < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :alt, :string
      attribute :content_type, :string
      attribute :href, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :def, Def, collection: true

      xml do
        root "abbrev"

        map_content to: :content
        map_attribute "alt", to: :alt
        map_attribute "content-type", to: :content_type
        map_attribute "href", to: :href, namespace: "http://www.w3.org/1999/xlink", prefix: "xlink"
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "def", to: :def
      end
    end
  end
end
