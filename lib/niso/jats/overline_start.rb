# frozen_string_literal: true

module Niso
  module Jats
    class OverlineStart < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string

      xml do
        root "overline-start"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
