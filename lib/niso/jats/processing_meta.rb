# frozen_string_literal: true

module Niso
  module Jats
    class ProcessingMeta < Lutaml::Model::Serializable
      attribute :base_tagset, :string
      attribute :id, :string
      attribute :math_representation, :string
      attribute :mathml_version, :string
      attribute :table_model, :string
      attribute :tagset_family, :string
      attribute :restricted_by, RestrictedBy, collection: true
      attribute :extended_by, ExtendedBy, collection: true
      attribute :custom_meta_group, CustomMetaGroup, collection: true

      xml do
        root "processing-meta"

        map_attribute "base-tagset", to: :base_tagset
        map_attribute "id", to: :id
        map_attribute "math-representation", to: :math_representation
        map_attribute "mathml-version", to: :mathml_version
        map_attribute "table-model", to: :table_model
        map_attribute "tagset-family", to: :tagset_family
        map_element "restricted-by", to: :restricted_by
        map_element "extended-by", to: :extended_by
        map_element "custom-meta-group", to: :custom_meta_group
      end
    end
  end
end
