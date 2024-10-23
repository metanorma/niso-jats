# frozen_string_literal: true

module Niso
  module Jats
    class LicenseParagraph < Lutaml::Model::Serializable
      attribute :p, Paragraph
      attribute :price, Price

      xml do
        root "license-p"

        map_element "price", to: :price
        map_element "p", to: :p
      end
    end
  end
end
