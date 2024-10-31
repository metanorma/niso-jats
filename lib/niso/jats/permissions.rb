# frozen_string_literal: true

module Niso
  module Jats
    class Permissions < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :copyright_statement, CopyrightStatement, collection: true
      attribute :copyright_year, CopyrightYear, collection: true
      attribute :copyright_holder, CopyrightHolder, collection: true
      attribute :license, License, collection: true
      attribute :free_to_read, ::Ali::FreeToRead, collection: true

      xml do
        root "permissions"

        map_attribute "id", to: :id
        map_element "copyright-statement", to: :copyright_statement
        map_element "copyright-year", to: :copyright_year
        map_element "copyright-holder", to: :copyright_holder
        map_element "license", to: :license
        map_element "free_to_read", to: :free_to_read, namespace: "http://www.niso.org/schemas/ali/1.0", prefix: "ali"
      end
    end
  end
end
