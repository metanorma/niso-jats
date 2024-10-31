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
      attribute :license_ref, Ali::LicenseRef, collection: true
      attribute :type, :string

      xml do
        root "license"

        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "license-type", to: :license_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_attribute "type", to: :type, namespace: "http://www.w3.org/1999/xlink", prefix: "xlink"
        map_element "license-p", to: :license_p
        map_element "license_ref", to: :license_ref, namespace: "http://www.niso.org/schemas/ali/1.0", prefix: "ali"
      end
    end
  end
end
