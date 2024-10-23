# frozen_string_literal: true

module Niso
  module Jats
    class FundingGroup < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :award_group, AwardGroup, collection: true
      attribute :funding_statement, FundingStatement, collection: true
      attribute :open_access, OpenAccess, collection: true

      xml do
        root "funding-group"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "award-group", to: :award_group
        map_element "funding-statement", to: :funding_statement
        map_element "open-access", to: :open_access
      end
    end
  end
end
