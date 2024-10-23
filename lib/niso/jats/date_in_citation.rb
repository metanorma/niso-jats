# frozen_string_literal: true

module Niso
  module Jats
    class DateInCitation < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :calendar, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :iso_8601_date, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :day, Day, collection: true
      attribute :era, Era, collection: true
      attribute :month, Month, collection: true
      attribute :season, Season, collection: true
      attribute :year, Year, collection: true

      xml do
        root "date-in-citation"

        map_content to: :content
        map_attribute "calendar", to: :calendar
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "iso-8601-date", to: :iso_8601_date
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "day", to: :day
        map_element "era", to: :era
        map_element "month", to: :month
        map_element "season", to: :season
        map_element "year", to: :year
      end
    end
  end
end
