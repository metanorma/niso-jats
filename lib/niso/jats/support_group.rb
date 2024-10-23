# frozen_string_literal: true

module Niso
  module Jats
    class SupportGroup < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :funding_group, FundingGroup, collection: true
      attribute :contributed_resource_group, ContributedResourceGroup,
                collection: true

      xml do
        root "support-group"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "funding-group", to: :funding_group
        map_element "contributed-resource-group",
                    to: :contributed_resource_group
      end
    end
  end
end
