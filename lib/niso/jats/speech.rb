# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Speech < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :speaker, Speaker
      attribute :p, Paragraph, collection: true

      xml do
        root "speech"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "speaker", to: :speaker
        map_element "p", to: :p
      end
    end
  end
end
