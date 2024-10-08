# frozen_string_literal: true

require "lutaml/model"

require_relative "abbrev"
require_relative "alternatives"
require_relative "bold"
require_relative "chem_struct"
require_relative "conf_acronym"
require_relative "conf_date"
require_relative "conf_loc"
require_relative "conf_name"
require_relative "conf_num"
require_relative "conf_sponsor"
require_relative "conf_theme"
require_relative "fixed_case"
require_relative "index_term"
require_relative "index_term_range_end"
require_relative "inline_formula"
require_relative "inline_graphic"
require_relative "inline_media"
require_relative "italic"
require_relative "milestone_end"
require_relative "milestone_start"
require_relative "monospace"
require_relative "named_content"
require_relative "overline"
require_relative "private_char"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "sup"
require_relative "underline"

module Niso
  module Jats
    class StringConf < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :bold, Bold, collection: true
      attribute :fixed_case, FixedCase, collection: true
      attribute :italic, Italic, collection: true
      attribute :monospace, Monospace, collection: true
      attribute :overline, Overline, collection: true
      attribute :roman, Roman, collection: true
      attribute :sans_serif, SansSerif, collection: true
      attribute :sc, Sc, collection: true
      attribute :strike, Strike, collection: true
      attribute :underline, Underline, collection: true
      attribute :ruby, Ruby, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :inline_formula, InlineFormula, collection: true
      attribute :abbrev, Abbrev, collection: true
      attribute :index_term, IndexTerm, collection: true
      attribute :index_term_range_end, IndexTermRangeEnd, collection: true
      attribute :milestone_end, MilestoneEnd, collection: true
      attribute :milestone_start, MilestoneStart, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true
      attribute :conf_date, ConfDate, collection: true
      attribute :conf_name, ConfName, collection: true
      attribute :conf_num, ConfNum, collection: true
      attribute :conf_loc, ConfLoc, collection: true
      attribute :conf_sponsor, ConfSponsor, collection: true
      attribute :conf_theme, ConfTheme, collection: true
      attribute :conf_acronym, ConfAcronym, collection: true
      attribute :string_conf, StringConf, collection: true

      xml do
        root "string-conf"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "bold", to: :bold
        map_element "fixed-case", to: :fixed_case
        map_element "italic", to: :italic
        map_element "monospace", to: :monospace
        map_element "overline", to: :overline
        map_element "roman", to: :roman
        map_element "sans-serif", to: :sans_serif
        map_element "sc", to: :sc
        map_element "strike", to: :strike
        map_element "underline", to: :underline
        map_element "ruby", to: :ruby
        map_element "alternatives", to: :alternatives
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "sub", to: :sub
        map_element "sup", to: :sup
        map_element "conf-date", to: :conf_date
        map_element "conf-name", to: :conf_name
        map_element "conf-num", to: :conf_num
        map_element "conf-loc", to: :conf_loc
        map_element "conf-sponsor", to: :conf_sponsor
        map_element "conf-theme", to: :conf_theme
        map_element "conf-acronym", to: :conf_acronym
        map_element "string-conf", to: :string_conf
      end
    end
  end
end
