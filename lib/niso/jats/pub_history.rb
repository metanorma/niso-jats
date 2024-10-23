# frozen_string_literal: true

module Niso
  module Jats
    class PubHistory < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :event, Event, collection: true

      xml do
        root "pub-history"

        map_attribute "id", to: :id
        map_element "event", to: :event
      end
    end
  end
end
