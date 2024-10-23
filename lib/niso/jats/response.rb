# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Response < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :response_type, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :processing_meta, ProcessingMeta
      attribute :front, Front
      attribute :front_stub, FrontStub
      attribute :body, Body
      attribute :back, Back
      attribute :floats_group, FloatsGroup

      xml do
        root "response"

        map_attribute "id", to: :id
        map_attribute "response-type", to: :response_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "processing-meta", to: :processing_meta
        map_element "front", to: :front
        map_element "front-stub", to: :front_stub
        map_element "body", to: :body
        map_element "back", to: :back
        map_element "floats-group", to: :floats_group
      end
    end
  end
end
