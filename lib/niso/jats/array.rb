# frozen_string_literal: true

module Niso
  module Jats
    class Array < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :orientation, :string, default: -> { "portrait" }
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :tbody, Tbody
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true

      xml do
        root "array"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "orientation", to: :orientation
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "alternatives", to: :alternatives
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "tbody", to: :tbody
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
      end
    end
  end
end
