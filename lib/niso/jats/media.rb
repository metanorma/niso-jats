# frozen_string_literal: true

module Niso
  module Jats
    class Media < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :mime_subtype, :string
      attribute :mimetype, :string
      attribute :orientation, :string, default: -> { "portrait" }
      attribute :position, :string, default: -> { "float" }
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true
      attribute :abstract, Abstract, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :caption, Caption, collection: true
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :xref, Xref, collection: true

      xml do
        root "media"

        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "mime-subtype", to: :mime_subtype
        map_attribute "mimetype", to: :mimetype
        map_attribute "orientation", to: :orientation
        map_attribute "position", to: :position
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
        map_element "abstract", to: :abstract
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "caption", to: :caption
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "xref", to: :xref
      end
    end
  end
end
