# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class IssueTitleGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :issue_title, IssueTitle
      attribute :issue_subtitle, IssueSubtitle, collection: true
      attribute :trans_title_group, TransTitleGroup, collection: true

      xml do
        root "issue-title-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "issue-title", to: :issue_title
        map_element "issue-subtitle", to: :issue_subtitle
        map_element "trans-title-group", to: :trans_title_group
      end
    end
  end
end
