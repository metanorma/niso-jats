# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Ruby < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :rb, Rb
      attribute :rt, Rt

      xml do
        root "ruby"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_element "rb", to: :rb
        map_element "rt", to: :rt
      end
    end
  end
end
