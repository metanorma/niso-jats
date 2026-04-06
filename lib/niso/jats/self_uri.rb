# frozen_string_literal: true

module Niso
  module Jats
    class SelfUri < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :type, :xlink_type
      attribute :href, :xlink_href
      attribute :lang, :xml_lang

      xml do
        element "self-uri"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_attribute "type", to: :type
        map_attribute "href", to: :href
      end
    end
  end
end
