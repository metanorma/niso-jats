# frozen_string_literal: true

module Niso
  module Jats
    class UnderlineEnd < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :rid, :string
      attribute :specific_use, :string

      xml do
        root "underline-end"

        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
