# frozen_string_literal: true

module Niso
  module Jats
    class AwardName < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :lang, :string

      xml do
        root "award-name"

        map_content to: :content
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
      end
    end
  end
end
