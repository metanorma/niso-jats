# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class ContributedResourceGroup < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :resource_type, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :award_group, AwardGroup, collection: true
      attribute :support_description, SupportDescription, collection: true
      attribute :resource_group, ResourceGroup, collection: true

      xml do
        root "contributed-resource-group"

        map_attribute "id", to: :id
        map_attribute "resource-type", to: :resource_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "award-group", to: :award_group
        map_element "support-description", to: :support_description
        map_element "resource-group", to: :resource_group
      end
    end
  end
end
