# frozen_string_literal: true

module Niso
  module Jats
    class Statement < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :label, Label
      attribute :title, Title
      attribute :abstract, Abstract, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :p, Paragraph, collection: true
      attribute :statement, Statement, collection: true
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true

      xml do
        root "statement"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "abstract", to: :abstract
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "p", to: :p
        map_element "statement", to: :statement
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
      end
    end
  end
end
