# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class AffAlternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :aff, Aff, collection: true

      xml do
        root "aff-alternatives"

        map_attribute "id", to: :id
        map_element "aff", to: :aff
      end
    end
  end
end
