# frozen_string_literal: true

module Niso
  module Jats
    class LongDesc < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "long-desc"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
      end
    end
  end
end
