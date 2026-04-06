# frozen_string_literal: true

module Niso
  module Jats
    class LicenseParagraph < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :p, Paragraph
      attribute :ext_link, ExtLink, collection: true
      attribute :price, Price

      xml do
        element "license-p"
        mixed_content

        map_content to: :content
        map_attribute "id", to: :id
        map_element "ext-link", to: :ext_link
        map_element "price", to: :price
        map_element "p", to: :p
      end
    end
  end
end
