# frozen_string_literal: true

module Niso
  module Jats
    class Std < Lutaml::Model::Serializable
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
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :day, Day, collection: true
      attribute :month, Month, collection: true
      attribute :pub_id, PubId, collection: true
      attribute :source, Source, collection: true
      attribute :std_organization, StdOrganization, collection: true
      attribute :year, Year, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "std"

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
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "day", to: :day
        map_element "month", to: :month
        map_element "pub-id", to: :pub_id
        map_element "source", to: :source
        map_element "std-organization", to: :std_organization
        map_element "year", to: :year
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
