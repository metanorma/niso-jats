# frozen_string_literal: true

module Niso
  module Jats
    class Abstract < Lutaml::Model::Serializable
      attribute :content, :string
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
        root "abstract"

        map_all to: :content
        map_attribute "abstract-type", to: :abstract_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        # map_element "object-id", to: :object_id # @TODO: check if it is needed
        # map_element "label", to: :label
        # map_element "title", to: :title
        # map_element "p", to: :p
        # map_element "sec", to: :sec
      end
    end
  end
end
