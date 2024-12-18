# frozen_string_literal: true

module Niso
  module Jats
    class Count < Lutaml::Model::Serializable
      attribute :count, :string
      attribute :count_type, :string
      attribute :id, :string

      xml do
        root "count"

        map_attribute "count", to: :count
        map_attribute "count-type", to: :count_type
        map_attribute "id", to: :id
      end
    end
  end
end
