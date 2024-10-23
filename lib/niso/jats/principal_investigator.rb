# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class PrincipalInvestigator < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :contrib_id, ContribId, collection: true
      attribute :name, Name, collection: true
      attribute :name_alternatives, NameAlternatives, collection: true
      attribute :string_name, StringName, collection: true

      xml do
        root "principal-investigator"

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "contrib-id", to: :contrib_id
        map_element "name", to: :name
        map_element "name-alternatives", to: :name_alternatives
        map_element "string-name", to: :string_name
      end
    end
  end
end
