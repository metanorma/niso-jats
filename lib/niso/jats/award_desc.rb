# frozen_string_literal: true

module Niso
  module Jats
    class AwardDesc < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :lang, :string

      xml do
        root "award-desc"

        map_content to: :content
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "lang", to: :lang
      end
    end
  end
end
