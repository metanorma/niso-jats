# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class CitationAlternatives < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :object_id, ObjectId, collection: true
      attribute :element_citation, ElementCitation, collection: true
      attribute :mixed_citation, MixedCitation, collection: true
      attribute :nlm_citation, NlmCitation, collection: true

      xml do
        root "citation-alternatives"

        map_attribute "id", to: :id
        map_element "object-id", to: :object_id
        map_element "element-citation", to: :element_citation
        map_element "mixed-citation", to: :mixed_citation
        map_element "nlm-citation", to: :nlm_citation
      end
    end
  end
end
