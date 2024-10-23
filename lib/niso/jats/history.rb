# frozen_string_literal: true

module Niso
  module Jats
    class History < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :date, Date, collection: true

      xml do
        root "history"

        map_attribute "id", to: :id
        map_element "date", to: :date
      end
    end
  end
end
