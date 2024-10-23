# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class FigGroup < Lutaml::Model::Serializable
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
      attribute :fig, Fig, collection: true
      attribute :block_alternatives, BlockAlternatives, collection: true
      attribute :xref, Xref, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true

      xml do
        root "fig-group"

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
        map_element "fig", to: :fig
        map_element "block-alternatives", to: :block_alternatives
        map_element "xref", to: :xref
        map_element "alternatives", to: :alternatives
        map_element "graphic", to: :graphic
        map_element "media", to: :media
      end
    end
  end
end
