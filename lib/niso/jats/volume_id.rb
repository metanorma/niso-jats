# frozen_string_literal: true

module Niso
  module Jats
    class VolumeId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :pub_id_type, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "volume-id"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "pub-id-type", to: :pub_id_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
      end
    end
  end
end
