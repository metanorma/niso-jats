# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class InlineGraphic < Lutaml::Model::Serializable
      attribute :baseline_shift, :string
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :mime_subtype, :string
      attribute :mimetype, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true

      xml do
        root "inline-graphic"

        map_attribute "baseline-shift", to: :baseline_shift
        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "mime-subtype", to: :mime_subtype
        map_attribute "mimetype", to: :mimetype
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
      end
    end
  end
end
