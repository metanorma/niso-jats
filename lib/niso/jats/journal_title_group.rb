# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class JournalTitleGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :journal_title, JournalTitle, collection: true
      attribute :journal_subtitle, JournalSubtitle, collection: true
      attribute :trans_title_group, TransTitleGroup, collection: true
      attribute :abbrev_journal_title, AbbrevJournalTitle, collection: true

      xml do
        root "journal-title-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_element "journal-title", to: :journal_title
        map_element "journal-subtitle", to: :journal_subtitle
        map_element "trans-title-group", to: :trans_title_group
        map_element "abbrev-journal-title", to: :abbrev_journal_title
      end
    end
  end
end
