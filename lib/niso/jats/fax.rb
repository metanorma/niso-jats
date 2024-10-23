# frozen_string_literal: true

module Niso
  module Jats
    class Fax < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string

      xml do
        root "fax"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
