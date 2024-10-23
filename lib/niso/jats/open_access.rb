# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class OpenAccess < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :p, Paragraph, collection: true

      xml do
        root "open-access"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "p", to: :p
      end
    end
  end
end
