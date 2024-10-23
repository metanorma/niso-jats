# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class VolumeIssueGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :volume, Volume, collection: true
      attribute :volume_id, VolumeId, collection: true
      attribute :volume_series, VolumeSeries
      attribute :issue, Issue, collection: true
      attribute :issue_id, IssueId, collection: true
      attribute :issue_title, IssueTitle, collection: true
      attribute :issue_title_group, IssueTitleGroup, collection: true
      attribute :issue_sponsor, IssueSponsor, collection: true
      attribute :issue_part, IssuePart

      xml do
        root "volume-issue-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "volume", to: :volume
        map_element "volume-id", to: :volume_id
        map_element "volume-series", to: :volume_series
        map_element "issue", to: :issue
        map_element "issue-id", to: :issue_id
        map_element "issue-title", to: :issue_title
        map_element "issue-title-group", to: :issue_title_group
        map_element "issue-sponsor", to: :issue_sponsor
        map_element "issue-part", to: :issue_part
      end
    end
  end
end
