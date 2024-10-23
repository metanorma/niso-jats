# frozen_string_literal: true

module Niso
  module Jats
    class Table < Lutaml::Model::Serializable
      attribute :border, :string
      attribute :cellpadding, :string
      attribute :cellspacing, :string
      attribute :content_type, :string
      attribute :frame, :string
      attribute :id, :string
      attribute :rules, :string
      attribute :specific_use, :string
      attribute :style, :string
      attribute :summary, :string
      attribute :width, :string
      attribute :col, Col, collection: true
      attribute :colgroup, Colgroup, collection: true
      attribute :thead, Thead
      attribute :tfoot, Tfoot
      attribute :tbody, Tbody, collection: true
      attribute :tr, Tr, collection: true

      xml do
        root "table"

        map_attribute "border", to: :border
        map_attribute "cellpadding", to: :cellpadding
        map_attribute "cellspacing", to: :cellspacing
        map_attribute "content-type", to: :content_type
        map_attribute "frame", to: :frame
        map_attribute "id", to: :id
        map_attribute "rules", to: :rules
        map_attribute "specific-use", to: :specific_use
        map_attribute "style", to: :style
        map_attribute "summary", to: :summary
        map_attribute "width", to: :width
        map_element "col", to: :col
        map_element "colgroup", to: :colgroup
        map_element "thead", to: :thead
        map_element "tfoot", to: :tfoot
        map_element "tbody", to: :tbody
        map_element "tr", to: :tr
      end
    end
  end
end
