# frozen_string_literal: true

require "lutaml/model"

require_relative "label"
require_relative "object_id"
require_relative "paragraph"
require_relative "sec"
require_relative "title"

module Niso
  module Jats
    class TransAbstract < Lutaml::Model::Serializable
      attribute :abstract_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label
      attribute :title, Title
      attribute :p, Paragraph, collection: true
      attribute :sec, Sec, collection: true

      xml do
        root "trans-abstract"

        map_attribute "abstract-type", to: :abstract_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "p", to: :p
        map_element "sec", to: :sec
      end
    end
  end
end
