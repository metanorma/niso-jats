# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class ObjectId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :pub_id_type, :string
      attribute :specific_use, :string

      xml do
        root "object-id"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "pub-id-type", to: :pub_id_type
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end