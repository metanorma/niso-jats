# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class AwardGroup < Lutaml::Model::Serializable
      attribute :award_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :rid, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :funding_source, FundingSource, collection: true
      attribute :support_source, SupportSource, collection: true
      attribute :award_id, AwardId, collection: true
      attribute :award_name, AwardName
      attribute :award_desc, AwardDesc
      attribute :principal_award_recipient, PrincipalAwardRecipient, collection: true
      attribute :principal_investigator, PrincipalInvestigator, collection: true

      xml do
        root "award-group"

        map_attribute "award-type", to: :award_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "funding-source", to: :funding_source
        map_element "support-source", to: :support_source
        map_element "award-id", to: :award_id
        map_element "award-name", to: :award_name
        map_element "award-desc", to: :award_desc
        map_element "principal-award-recipient", to: :principal_award_recipient
        map_element "principal-investigator", to: :principal_investigator
      end
    end
  end
end
