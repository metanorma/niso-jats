# frozen_string_literal: true

module Niso
  module Jats
    class WordCount < Lutaml::Model::Serializable
      attribute :count, :string
      attribute :id, :string

      xml do
        root "word-count"

        map_attribute "count", to: :count
        map_attribute "id", to: :id
      end
    end
  end
end
