# frozen_string_literal: true

module Niso
  module Jats
    class MmlMath < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :name, :string

      xml do
        root "math"
        namespace "http://www.w3.org/1998/Math/MathML", "mml"

        map_all to: :content
        map_attribute "name", to: :name
      end
    end
  end
end
