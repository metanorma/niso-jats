# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class SecMeta < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :object_id, ObjectId, collection: true
      attribute :contrib_group, ContribGroup, collection: true
      attribute :abstract, Abstract, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :permissions, Permissions

      xml do
        root "sec-meta"

        map_attribute "id", to: :id
        map_element "object-id", to: :object_id
        map_element "contrib-group", to: :contrib_group
        map_element "abstract", to: :abstract
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "permissions", to: :permissions
      end
    end
  end
end
