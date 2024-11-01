# frozen_string_literal: true

module Niso
  module Jats
    class Def < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :rid, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :p, Paragraph, collection: true

      xml do
        root "def", mixed: true

        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "p", to: :p
      end
    end
  end
end
