# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Date < Lutaml::Model::Serializable
      attribute :calendar, :string
      attribute :date_type, :string
      attribute :id, :string
      attribute :iso_8601_date, :string
      attribute :publication_format, :string
      attribute :specific_use, :string
      attribute :day, Day
      attribute :month, Month
      attribute :season, Season
      attribute :year, Year
      attribute :era, Era

      xml do
        root "date"

        map_attribute "calendar", to: :calendar
        map_attribute "date-type", to: :date_type
        map_attribute "id", to: :id
        map_attribute "iso-8601-date", to: :iso_8601_date
        map_attribute "publication-format", to: :publication_format
        map_attribute "specific-use", to: :specific_use
        map_element "day", to: :day
        map_element "month", to: :month
        map_element "season", to: :season
        map_element "year", to: :year
        map_element "era", to: :era
      end
    end
  end
end
