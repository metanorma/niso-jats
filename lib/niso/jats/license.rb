# frozen_string_literal: true

module Niso
  module Jats
    class License < Lutaml::Model::Serializable
      attribute :hreflang, :string
      attribute :id, :string
      attribute :license_type, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :license_p, LicenseParagraph, collection: true

      xml do
        root "license"

        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "license-type", to: :license_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "license-p", to: :license_p
      end
    end
  end
end
