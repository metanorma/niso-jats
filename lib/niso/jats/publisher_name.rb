# frozen_string_literal: true

module Niso
  module Jats
    class PublisherName < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :xml_lang
      attribute :institution, Institution, collection: true
      attribute :institution_wrap, InstitutionWrap, collection: true

      xml do
        element "publisher-name"
        ordered

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "institution", to: :institution
        map_element "institution-wrap", to: :institution_wrap
      end
    end
  end
end
