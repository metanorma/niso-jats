# frozen_string_literal: true

require "lutaml/model"

require_relative "institution"
require_relative "institution_wrap"

module Niso
  module Jats
    class PublisherName < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :institution, Institution, collection: true
      attribute :institution_wrap, InstitutionWrap, collection: true

      xml do
        root "publisher-name"

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
