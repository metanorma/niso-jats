# frozen_string_literal: true

module Niso
  module Jats
    class Break < Lutaml::Model::Serializable
      attribute :id, :string

      xml do
        root "break"

        map_attribute "id", to: :id
      end
    end
  end
end
