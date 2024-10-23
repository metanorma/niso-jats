# frozen_string_literal: true

module Niso
  module Jats
    class ElocationId < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :seq, :string
      attribute :specific_use, :string

      xml do
        root "elocation-id"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "seq", to: :seq
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
