# frozen_string_literal: true

module Niso
  module Jats
    class Isbn < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :assigning_authority, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :publication_format, :string
      attribute :specific_use, :string

      xml do
        root "isbn"

        map_content to: :content
        map_attribute "assigning-authority", to: :assigning_authority
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "publication-format", to: :publication_format
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
