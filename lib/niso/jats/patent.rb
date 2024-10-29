# frozen_string_literal: true

module Niso
  module Jats
    class Patent < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :country, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "patent"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "country", to: :country
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
      end
    end
  end
end
