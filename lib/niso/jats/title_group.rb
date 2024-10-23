# frozen_string_literal: true

module Niso
  module Jats
    class TitleGroup < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :article_title, ArticleTitle
      attribute :subtitle, Subtitle, collection: true
      attribute :trans_title_group, TransTitleGroup, collection: true
      attribute :alt_title, AltTitle, collection: true
      attribute :fn_group, FnGroup

      xml do
        root "title-group"

        map_attribute "id", to: :id
        map_element "article-title", to: :article_title
        map_element "subtitle", to: :subtitle
        map_element "trans-title-group", to: :trans_title_group
        map_element "alt-title", to: :alt_title
        map_element "fn-group", to: :fn_group
      end
    end
  end
end
