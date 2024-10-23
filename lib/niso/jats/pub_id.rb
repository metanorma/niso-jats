# frozen_string_literal: true

module Niso
  module Jats
    class PubId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :custom_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :pub_id_type, :string
      attribute :specific_use, :string

      xml do
        root "pub-id"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "custom-type", to: :custom_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "pub-id-type", to: :pub_id_type
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
