# frozen_string_literal: true

module Niso
  module Jats
    class Bold < Lutaml::Model::Serializable
    end

    class Italic < Lutaml::Model::Serializable
    end

    class Monospace < Lutaml::Model::Serializable
    end

    class FixedCase < Lutaml::Model::Serializable
    end

    class Overline < Lutaml::Model::Serializable
    end

    class Roman < Lutaml::Model::Serializable
    end

    class Ruby < Lutaml::Model::Serializable
    end

    class SansSerif < Lutaml::Model::Serializable
    end

    class NamedContent < Lutaml::Model::Serializable
    end

    class StyledContent < Lutaml::Model::Serializable
    end

    class Sc < Lutaml::Model::Serializable
    end

    class Sub < Lutaml::Model::Serializable
    end

    class Sup < Lutaml::Model::Serializable
    end

    class Strike < Lutaml::Model::Serializable
    end

    class Underline < Lutaml::Model::Serializable
    end

    class Xref < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :alt, :string
      attribute :custom_type, :string
      attribute :id, :string
      attribute :ref_type, :string
      attribute :rid, :string
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
        root "xref"

        map_content to: :content
        map_attribute "alt", to: :alt
        map_attribute "custom-type", to: :custom_type
        map_attribute "id", to: :id
        map_attribute "ref-type", to: :ref_type
        map_attribute "rid", to: :rid
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
