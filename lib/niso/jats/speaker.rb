# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Speaker < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :degrees, Degrees, collection: true
      attribute :given_names, GivenNames, collection: true
      attribute :prefix, Prefix, collection: true
      attribute :surname, Surname, collection: true
      attribute :suffix, Suffix, collection: true
      attribute :fn, Fn, collection: true
      attribute :target, Target, collection: true
      attribute :xref, Xref, collection: true

      xml do
        root "speaker"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "degrees", to: :degrees
        map_element "given-names", to: :given_names
        map_element "prefix", to: :prefix
        map_element "surname", to: :surname
        map_element "suffix", to: :suffix
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
      end
    end
  end
end
