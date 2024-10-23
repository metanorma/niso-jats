# frozen_string_literal: true

module Niso
  module Jats
    class TexMath < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :notation, :string
      attribute :specific_use, :string
      attribute :version, :string

      xml do
        root "tex-math"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "notation", to: :notation
        map_attribute "specific-use", to: :specific_use
        map_attribute "version", to: :version
      end
    end
  end
end
