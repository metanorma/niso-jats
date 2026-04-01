# frozen_string_literal: true

module Niso
  module Jats
    class Article < Lutaml::Model::Serializable
      attribute :article_type, :string
      attribute :dtd_version, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :xml_lang, default: -> { "en" }
      attribute :processing_meta, ProcessingMeta
      attribute :front, Front
      attribute :body, Body
      attribute :back, Back
      attribute :floats_group, FloatsGroup
      attribute :sub_article, SubArticle, collection: true
      attribute :response, Response, collection: true

      xml do
        element "article"

        map_attribute "article-type", to: :article_type
        map_attribute "dtd-version", to: :dtd_version
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang, render_default: true
        map_element "processing-meta", to: :processing_meta
        map_element "front", to: :front
        map_element "body", to: :body
        map_element "back", to: :back
        map_element "floats-group", to: :floats_group
        map_element "sub-article", to: :sub_article
        map_element "response", to: :response
      end

      # Returns the first journal title from journal metadata.
      #
      # @return [String, nil] the journal title
      def journal_title
        meta = front&.journal_meta
        return unless meta

        titles = meta.journal_title_group.first.journal_title
        titles.first.content if titles.any?
      end

      # Returns the DOI (Digital Object Identifier) from article identifiers.
      #
      # @return [String, nil] the DOI value
      def doi
        ids = front&.article_meta&.article_id
        return unless ids

        ids.find { |id| id.pub_id_type == "doi" }&.content
      end

      # Returns all contributors across all contrib-groups in article metadata.
      #
      # @return [Array<Contrib>] the flattened list of contributors
      def contributors
        groups = front&.article_meta&.contrib_group
        return [] unless groups

        groups.flat_map(&:contrib)
      end

      # Returns affiliations matching the given id across all contrib-groups.
      #
      # @param id [String] the affiliation id to match
      # @return [Array<Aff>] matching affiliations
      def affiliation(id)
        groups = front&.article_meta&.contrib_group
        return [] unless groups

        groups.flat_map(&:aff).select { |a| a.id == id }
      end

      # Returns formatted publication dates as ISO 8601 strings (YYYY-MM-DD).
      # Missing month or day defaults to "01".
      #
      # @return [Array<String>] formatted date strings
      def pub_dates
        dates = front&.article_meta&.pub_date
        return [] unless dates

        dates.map { |d| format_pub_date(d) }
      end

      # Returns bibliographic locality (volume, issue, page range).
      #
      # @return [Array<Array<String>>] each entry is [type, value] or
      #   [type, from, to] for page ranges
      def locality
        meta = front&.article_meta
        return [] unless meta

        build_locality(meta)
      end

      # Returns DOI-based links derived from article identifiers.
      #
      # @return [Array<Hash{Symbol => String}>] each hash has :content (URL)
      #   and :type ("src" or "doi")
      def doi_links
        ids = front&.article_meta&.article_id
        return [] unless ids

        ids.each_with_object([]) do |id, links|
          next unless id.pub_id_type == "doi"

          url = "https://doi.org/#{id.content}"
          links << { content: url, type: "src" }
          links << { content: url, type: "doi" }
        end
      end

      private

      def format_pub_date(pub_date)
        year = pub_date.year&.content
        month = pad_date_part(pub_date.month&.content)
        day = pad_date_part(pub_date.day&.content)
        "#{year}-#{month}-#{day}"
      end

      def pad_date_part(value)
        return "01" if value.nil? || value.empty?

        value.rjust(2, "0")
      end

      def build_locality(meta)
        coll = meta.volume.map { |v| ["volume", v.content] }
        meta.issue.each { |i| coll << ["issue", i.content] }
        return coll unless meta.fpage

        page = ["page", meta.fpage.content]
        page << meta.lpage.content if meta.lpage
        coll << page
      end
    end
  end
end
