# frozen_string_literal: true

module Niso
  module Jats
    class ChemStruct < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :break, Break, collection: true
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
      attribute :label, Label, collection: true
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, :string, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :array, Array, collection: true
      attribute :code, Code, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :fn, Fn, collection: true
      attribute :target, Target, collection: true
      attribute :xref, Xref, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "chem-struct"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, namespace: "http://www.w3.org/XML/1998/namespace", prefix: "xml"
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "break", to: :break
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
        map_element "label", to: :label
        map_element "def-list", to: :def_list
        map_element "list", to: :list
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "alternatives", to: :alternatives
        map_element "array", to: :array
        map_element "code", to: :code
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
