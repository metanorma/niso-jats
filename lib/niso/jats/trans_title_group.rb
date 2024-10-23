# frozen_string_literal: true

module Niso
  module Jats
    class TransTitleGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :trans_title, TransTitle
      attribute :trans_subtitle, TransSubtitle, collection: true

      xml do
        root "trans-title-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "trans-title", to: :trans_title
        map_element "trans-subtitle", to: :trans_subtitle
      end
    end
  end
end
