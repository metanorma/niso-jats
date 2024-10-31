# frozen_string_literal: true

module Niso
  module Jats
    class LicenseParagraph < Lutaml::Model::Serializable
      attribute :p, Paragraph
      attribute :price, Price
      attribute :open_access, OpenAccess, collection: true

      xml do
        root "license-p"

        map_element "price", to: :price
        map_element "p", to: :p
        map_element "open-access", to: :open_access
      end
    end
  end
end
