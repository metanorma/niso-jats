# frozen_string_literal: true

module Niso
  module Jats
    class Size < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :units, :string
      attribute :lang, :string

      xml do
        root "size"

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "units", to: :units
        map_attribute "lang", to: :lang
      end
    end
  end
end
