# frozen_string_literal: true

module Niso
  module Jats
    class ExtLink < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :ext_link_type, :string
      attribute :hreflang, :string
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
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "ext-link"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "ext-link-type", to: :ext_link_type
        map_attribute "hreflang", to: :hreflang
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
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
