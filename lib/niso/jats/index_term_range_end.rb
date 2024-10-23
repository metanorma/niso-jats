# frozen_string_literal: true

module Niso
  module Jats
    class IndexTermRangeEnd < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :rid, :string

      xml do
        root "index-term-range-end"

        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
      end
    end
  end
end
