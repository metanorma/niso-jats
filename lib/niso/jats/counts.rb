# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class Counts < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :count, Count, collection: true
      attribute :fig_count, FigCount
      attribute :table_count, TableCount
      attribute :equation_count, EquationCount
      attribute :ref_count, RefCount
      attribute :page_count, PageCount
      attribute :word_count, WordCount

      xml do
        root "counts"

        map_attribute "id", to: :id
        map_element "count", to: :count
        map_element "fig-count", to: :fig_count
        map_element "table-count", to: :table_count
        map_element "equation-count", to: :equation_count
        map_element "ref-count", to: :ref_count
        map_element "page-count", to: :page_count
        map_element "word-count", to: :word_count
      end
    end
  end
end
