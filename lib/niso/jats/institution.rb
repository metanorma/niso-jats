# frozen_string_literal: true

module Niso
  module Jats
    class Institution < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "institution"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
