# frozen_string_literal: true

module Niso
  module Jats
    class Name < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :name_style, :string, default: -> { "western" }
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :surname, Surname
      attribute :given_names, GivenNames
      attribute :prefix, Prefix
      attribute :suffix, Suffix

      xml do
        root "name"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "name-style", to: :name_style
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "surname", to: :surname
        map_element "given-names", to: :given_names
        map_element "prefix", to: :prefix
        map_element "suffix", to: :suffix
      end
    end
  end
end
