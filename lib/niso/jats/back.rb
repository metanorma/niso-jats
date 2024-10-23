# frozen_string_literal: true

module Niso
  module Jats
    class Back < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :label, Label
      attribute :title, Title, collection: true
      attribute :ack, Ack, collection: true
      attribute :app_group, AppGroup, collection: true
      attribute :bio, Bio, collection: true
      attribute :fn_group, FnGroup, collection: true
      attribute :glossary, Glossary, collection: true
      attribute :ref_list, RefList, collection: true
      attribute :notes, Notes, collection: true
      attribute :sec, Sec, collection: true

      xml do
        root "back"

        map_attribute "id", to: :id
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "ack", to: :ack
        map_element "app-group", to: :app_group
        map_element "bio", to: :bio
        map_element "fn-group", to: :fn_group
        map_element "glossary", to: :glossary
        map_element "ref-list", to: :ref_list
        map_element "notes", to: :notes
        map_element "sec", to: :sec
      end
    end
  end
end
