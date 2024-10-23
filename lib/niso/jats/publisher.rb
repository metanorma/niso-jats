# frozen_string_literal: true

module Niso
  module Jats
    class Publisher < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :publisher_name, PublisherName, collection: true
      attribute :publisher_loc, PublisherLoc, collection: true

      xml do
        root "publisher"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_element "publisher-name", to: :publisher_name
        map_element "publisher-loc", to: :publisher_loc
      end
    end
  end
end
