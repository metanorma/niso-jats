module Niso
  module Jats
    class ArticleModel
      attr_accessor :article_type, :dtd_version, :id, :specific_use, :lang, :processing_meta,
                    :front, :body, :back, :floats_group, :sub_article, :response

      #
      # @return [String] journal title
      #
      def journal_title
        front.journal_meta.journal_title_group[0].journal_title[0].content
      end

      def doi
        return @doi if defined?(@doi)

        @doi = front.article_meta.article_id.find { |id| id.pub_id_type == "doi" }&.content
      end

      def title
        front.article_meta.title_group.article_title.filter_map do |t|
          next if t.content.empty?

          format = CGI.escapeHTML(t.content) == t.content ? "text/plain" : "text/html"
          { content: t.content, language: t.lang, script: "Latn", format: format }
        end
      end

      def contributor
        front.article_meta.contrib_group.inject([]) do |memo, contrib_group|
          memo + contrib_group.contrib
        end
      end

      def affiliation(rid)
        front.article_meta.contrib_group.inject([]) do |mem, cg|
          mem + cg.aff.select { |a| a.id == rid }
        end
      end

      def date
        front.article_meta.pub_date.map do |d|
          month = format_date_part(d.month)
          day = format_date_part(d.day)
          date_str = "#{d.year.content}-#{month}-#{day}"
          block_given? ? yield(date_str, d.pub_type) : date_str
        end
      end

      #
      # Parse loclity information
      #
      # @return [Array<Array<String>>] array of extents' args (type, from, to)
      #
      def locality
        coll = front.article_meta.volume.map { |v| ["volume", v.content] }
        front.article_meta.issue.each { |i| coll << ["issue", i.content] }
        if front.article_meta.fpage
          coll << ["page", front.article_meta.fpage.content, front.article_meta.lpage.content]
        end
        coll
      end

      def link
        front.article_meta.article_id.each_with_object([]) do |l, a|
          next unless l.pub_id_type == "doi"

          url = "https://doi.org/#{l.content}"
          a << { content: url, type: "src" }
          a << { content: url, type: "doi" }
        end
      end

      private

      def format_date_part(part)
        return "01" if part.nil? || part.content.empty?

        part.content.rjust(2, "0")
      end
    end
  end
end
