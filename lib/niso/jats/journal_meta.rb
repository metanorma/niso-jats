# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class JournalMeta < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :journal_id, JournalId, collection: true
      attribute :journal_title_group, JournalTitleGroup, collection: true
      attribute :contrib_group, ContribGroup, collection: true
      attribute :aff, Aff, collection: true
      attribute :aff_alternatives, AffAlternatives, collection: true
      attribute :issn, Issn, collection: true
      attribute :issn_l, IssnL
      attribute :isbn, Isbn, collection: true
      attribute :publisher, Publisher
      attribute :notes, Notes, collection: true
      attribute :self_uri, SelfUri, collection: true

      xml do
        root "journal-meta"

        map_attribute "id", to: :id
        map_element "journal-id", to: :journal_id
        map_element "journal-title-group", to: :journal_title_group
        map_element "contrib-group", to: :contrib_group
        map_element "aff", to: :aff
        map_element "aff-alternatives", to: :aff_alternatives
        map_element "issn", to: :issn
        map_element "issn-l", to: :issn_l
        map_element "isbn", to: :isbn
        map_element "publisher", to: :publisher
        map_element "notes", to: :notes
        map_element "self-uri", to: :self_uri
      end
    end
  end
end
