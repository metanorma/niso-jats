# frozen_string_literal: true

module Niso
  module Jats
    class IssnL < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :id, :string
      attribute :specific_use, :string

      xml do
        root "issn-l"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
