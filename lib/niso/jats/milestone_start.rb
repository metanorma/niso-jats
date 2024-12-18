# frozen_string_literal: true

module Niso
  module Jats
    class MilestoneStart < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :rationale, :string
      attribute :rid, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "milestone-start"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "rationale", to: :rationale
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
      end
    end
  end
end
