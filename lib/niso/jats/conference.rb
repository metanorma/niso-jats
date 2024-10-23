# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Conference < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :conf_date, ConfDate
      attribute :conf_name, ConfName, collection: true
      attribute :conf_acronym, ConfAcronym, collection: true
      attribute :conf_num, ConfNum
      attribute :conf_loc, ConfLoc
      attribute :conf_sponsor, ConfSponsor, collection: true
      attribute :conf_theme, ConfTheme

      xml do
        root "conference"

        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "conf-date", to: :conf_date
        map_element "conf-name", to: :conf_name
        map_element "conf-acronym", to: :conf_acronym
        map_element "conf-num", to: :conf_num
        map_element "conf-loc", to: :conf_loc
        map_element "conf-sponsor", to: :conf_sponsor
        map_element "conf-theme", to: :conf_theme
      end
    end
  end
end
