# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class InstitutionWrap < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :institution, Institution, collection: true
      attribute :institution_id, InstitutionId, collection: true

      xml do
        root "institution-wrap"

        map_attribute "id", to: :id
        map_element "institution", to: :institution
        map_element "institution-id", to: :institution_id
      end
    end
  end
end
