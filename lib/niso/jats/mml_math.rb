# frozen_string_literal: true

module Niso
  module Jats
    class MmlMath < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :name, :string

      xml do
        element "math"
        namespace ::Niso::Jats::Namespaces::Mathml

        map_all to: :content
        map_attribute "name", to: :name
      end
    end
  end
end
