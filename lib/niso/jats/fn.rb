# frozen_string_literal: true

module Niso
  module Jats
    class Label < Lutaml::Model::Serializable; end
    class Paragraph < Lutaml::Model::Serializable; end

    class Fn < Lutaml::Model::Serializable
      attribute :custom_type, :string
      attribute :fn_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :symbol, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :p, Paragraph, collection: true

      xml do
        root "fn", mixed: true

        map_attribute "custom-type", to: :custom_type
        map_attribute "fn-type", to: :fn_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "symbol", to: :symbol
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "label", to: :label
        map_element "p", to: :p
      end
    end
  end
end
