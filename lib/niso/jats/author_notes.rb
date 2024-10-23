# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class AuthorNotes < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :rid, :string
      attribute :specific_use, :string
      attribute :label, Label
      attribute :title, Title
      attribute :corresp, Corresp, collection: true
      attribute :fn, Fn, collection: true
      attribute :p, Paragraph, collection: true

      xml do
        root "author-notes"

        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "corresp", to: :corresp
        map_element "fn", to: :fn
        map_element "p", to: :p
      end
    end
  end
end
