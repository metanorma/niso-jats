# frozen_string_literal: true

module Niso
  module Jats
    class NameAlternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :name, Name, collection: true
      attribute :string_name, StringName, collection: true

      xml do
        root "name-alternatives"

        map_attribute "id", to: :id
        map_element "name", to: :name
        map_element "string-name", to: :string_name
      end
    end
  end
end
