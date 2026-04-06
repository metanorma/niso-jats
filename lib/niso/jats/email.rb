# frozen_string_literal: true

module Niso
  module Jats
    class Email < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :type, :xlink_type
      attribute :lang, :xml_lang

      xml do
        element "email"
        mixed_content

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_attribute "type", to: :type
      end
    end
  end
end
