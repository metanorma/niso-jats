# frozen_string_literal: true

module Niso
  module Jats
    class VerseGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :style, :string
      attribute :style_detail, :string
      attribute :style_type, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :title, Title
      attribute :subtitle, Subtitle
      attribute :verse_line, VerseLine, collection: true
      attribute :verse_group, VerseGroup, collection: true
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true

      xml do
        root "verse-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "style", to: :style
        map_attribute "style-detail", to: :style_detail
        map_attribute "style-type", to: :style_type
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "subtitle", to: :subtitle
        map_element "verse-line", to: :verse_line
        map_element "verse-group", to: :verse_group
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
      end
    end
  end
end
