# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class FnGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :title, Title
      attribute :fn, Fn, collection: true

      xml do
        root "fn-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "fn", to: :fn
      end
    end
  end
end
