# frozen_string_literal: true

module Niso
  module Jats
    class StringName < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :name_style, :string, default: -> { "western" }
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :degrees, Degrees, collection: true
      attribute :given_names, GivenNames, collection: true
      attribute :prefix, Prefix, collection: true
      attribute :surname, Surname, collection: true
      attribute :suffix, Suffix, collection: true

      xml do
        root "string-name"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "name-style", to: :name_style
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "degrees", to: :degrees
        map_element "given-names", to: :given_names
        map_element "prefix", to: :prefix
        map_element "surname", to: :surname
        map_element "suffix", to: :suffix
      end
    end
  end
end
