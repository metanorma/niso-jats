# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class Year < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :calendar, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :iso_8601_date, :string
      attribute :specific_use, :string
      attribute :lang, :string

      xml do
        root "year"

        map_content to: :content
        map_attribute "calendar", to: :calendar
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "iso-8601-date", to: :iso_8601_date
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
      end
    end
  end
end
