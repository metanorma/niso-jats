# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class CustomMetaGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :custom_meta, CustomMeta, collection: true

      xml do
        root "custom-meta-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "custom-meta", to: :custom_meta
      end
    end
  end
end
