# frozen_string_literal: true

module Niso
  module Jats
    class Hr < Lutaml::Model::Serializable
      attribute :id, :string

      xml do
        element "hr"

        map_attribute "id", to: :id
      end
    end
  end
end
