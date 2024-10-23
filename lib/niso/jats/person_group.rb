# frozen_string_literal: true

module Niso
  module Jats
    class PersonGroup < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :custom_type, :string
      attribute :id, :string
      attribute :person_group_type, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :anonymous, Anonymous, collection: true
      attribute :collab, Collab, collection: true
      attribute :collab_alternatives, CollabAlternatives, collection: true
      attribute :name, Name, collection: true
      attribute :name_alternatives, NameAlternatives, collection: true
      attribute :string_name, StringName, collection: true
      attribute :aff, Aff, collection: true
      attribute :aff_alternatives, AffAlternatives, collection: true
      attribute :etal, Etal, collection: true
      attribute :role, Role, collection: true

      xml do
        root "person-group"

        map_content to: :content
        map_attribute "custom-type", to: :custom_type
        map_attribute "id", to: :id
        map_attribute "person-group-type", to: :person_group_type
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "anonymous", to: :anonymous
        map_element "collab", to: :collab
        map_element "collab-alternatives", to: :collab_alternatives
        map_element "name", to: :name
        map_element "name-alternatives", to: :name_alternatives
        map_element "string-name", to: :string_name
        map_element "aff", to: :aff
        map_element "aff-alternatives", to: :aff_alternatives
        map_element "etal", to: :etal
        map_element "role", to: :role
      end
    end
  end
end
