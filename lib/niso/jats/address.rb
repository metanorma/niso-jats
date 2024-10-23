# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Address < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :addr_line, AddrLine, collection: true
      attribute :city, City, collection: true
      attribute :country, Country, collection: true
      attribute :fax, Fax, collection: true
      attribute :institution, Institution, collection: true
      attribute :institution_wrap, InstitutionWrap, collection: true
      attribute :phone, Phone, collection: true
      attribute :postal_code, PostalCode, collection: true
      attribute :state, State, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true

      xml do
        root "address"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "addr-line", to: :addr_line
        map_element "city", to: :city
        map_element "country", to: :country
        map_element "fax", to: :fax
        map_element "institution", to: :institution
        map_element "institution-wrap", to: :institution_wrap
        map_element "phone", to: :phone
        map_element "postal-code", to: :postal_code
        map_element "state", to: :state
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
      end
    end
  end
end
