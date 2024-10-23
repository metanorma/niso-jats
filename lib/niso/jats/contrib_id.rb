# frozen_string_literal: true

module Niso
  module Jats
    class ContribId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :authenticated, :string, default: -> { "false" }
      attribute :content_type, :string
      attribute :contrib_id_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "contrib-id"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "authenticated", to: :authenticated
        map_attribute "content-type", to: :content_type
        map_attribute "contrib-id-type", to: :contrib_id_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
      end
    end
  end
end
