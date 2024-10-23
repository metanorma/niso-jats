# frozen_string_literal: true

module Niso
  module Jats
    class TableWrap < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :orientation, :string, default: -> { "portrait" }
      attribute :position, :string, default: -> { "float" }
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label, collection: true
      attribute :caption, Caption, collection: true
      attribute :abstract, Abstract, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :disp_quote, DispQuote, collection: true
      attribute :speech, Speech, collection: true
      attribute :statement, Statement, collection: true
      attribute :verse_group, VerseGroup, collection: true
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :chem_struct_wrap, ChemStructWrap, collection: true
      attribute :code, Code, collection: true
      attribute :disp_formula, DispFormula, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :table, Table, collection: true
      attribute :xref, Xref, collection: true
      attribute :table_wrap_foot, TableWrapFoot, collection: true
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true

      xml do
        root "table-wrap"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "orientation", to: :orientation
        map_attribute "position", to: :position
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "caption", to: :caption
        map_element "abstract", to: :abstract
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "disp-quote", to: :disp_quote
        map_element "speech", to: :speech
        map_element "statement", to: :statement
        map_element "verse-group", to: :verse_group
        map_element "def-list", to: :def_list
        map_element "list", to: :list
        map_element "alternatives", to: :alternatives
        map_element "chem-struct-wrap", to: :chem_struct_wrap
        map_element "code", to: :code
        map_element "disp-formula", to: :disp_formula
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "table", to: :table
        map_element "xref", to: :xref
        map_element "table-wrap-foot", to: :table_wrap_foot
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
      end
    end
  end
end
