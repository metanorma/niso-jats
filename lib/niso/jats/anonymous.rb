# frozen_string_literal: true

module Niso
  module Jats
    class Anonymous < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "anonymous"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
      end
    end
  end
end
