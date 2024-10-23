# frozen_string_literal: true

module Niso
  module Jats
    class MetaName < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string

      xml do
        root "meta-name"

        map_content to: :content
        map_attribute "id", to: :id
      end
    end
  end
end
