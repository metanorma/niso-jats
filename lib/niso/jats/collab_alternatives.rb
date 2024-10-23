# frozen_string_literal: true

module Niso
  module Jats
    class CollabAlternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :collab, Collab, collection: true

      xml do
        root "collab-alternatives"

        map_attribute "id", to: :id
        map_element "collab", to: :collab
      end
    end
  end
end
