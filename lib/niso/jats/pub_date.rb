# frozen_string_literal: true

module Niso
  module Jats
    class PubDate < Lutaml::Model::Serializable
      attribute :assigning_authority, :string
      attribute :calendar, :string
      attribute :date_type, :string
      attribute :id, :string
      attribute :iso_8601_date, :string
      attribute :pub_type, :string
      attribute :publication_format, :string
      attribute :lang, :string
      attribute :day, Day
      attribute :month, Month
      attribute :season, Season
      attribute :year, Year
      attribute :era, Era

      xml do
        root "pub-date"

        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "calendar", to: :calendar
        map_attribute "date-type", to: :date_type
        map_attribute "id", to: :id
        map_attribute "iso-8601-date", to: :iso_8601_date
        map_attribute "pub-type", to: :pub_type
        map_attribute "publication-format", to: :publication_format
        map_attribute "lang", to: :lang
        map_element "day", to: :day
        map_element "month", to: :month
        map_element "season", to: :season
        map_element "year", to: :year
        map_element "era", to: :era
      end
    end
  end
end
