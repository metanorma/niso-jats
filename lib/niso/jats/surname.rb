# frozen_string_literal: true

module Niso
  module Jats
    class Surname < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :initials, :string

      xml do
        root "surname"

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "initials", to: :initials
      end
    end
  end
end
