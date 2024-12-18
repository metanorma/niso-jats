# frozen_string_literal: true

module Niso
  module Jats
    class Uri < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :type, :string
      attribute :href, :string

      xml do
        root "uri"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_attribute "type", to: :type, namespace: "http://www.w3.org/1999/xlink", prefix: "xlink"
        map_attribute "href", to: :href, namespace: "http://www.w3.org/1999/xlink", prefix: "xlink"
      end
    end
  end
end
