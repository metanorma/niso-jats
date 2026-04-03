# frozen_string_literal: true

# OASIS CALS Table Model for NISO JATS.
# Wraps Oasis::Etm::* classes with the OASIS namespace declaration
# so that <oasis:table>, <oasis:tgroup>, etc. are properly parsed/serialized.
require "oasis/etm"

module Niso
  module Jats
    # OASIS entry supports mixed content (text + JATS inline elements)
    # so we define it here rather than inheriting from oasis-etm's Entry.
    class OasisEntry < Lutaml::Model::Serializable
      attribute :colname, :string
      attribute :namest, :string
      attribute :nameend, :string
      attribute :morerows, :integer
      attribute :colsep, :integer, values: %w[0 1]
      attribute :rowsep, :integer, values: %w[0 1]
      attribute :align, :string, values: %w[left right center justify char]
      attribute :char, :string
      attribute :charoff, :string
      attribute :valign, :string, values: %w[top middle bottom]
      attribute :content, :string
      attribute :bold, Bold, collection: true
      attribute :fixed_case, FixedCase, collection: true
      attribute :italic, Italic, collection: true
      attribute :monospace, Monospace, collection: true
      attribute :overline, Overline, collection: true
      attribute :roman, Roman, collection: true
      attribute :sans_serif, SansSerif, collection: true
      attribute :sc, Sc, collection: true
      attribute :strike, Strike, collection: true
      attribute :underline, Underline, collection: true
      attribute :ruby, Ruby, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true
      attribute :xref, Xref, collection: true
      attribute :break, Break, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :inline_formula, InlineFormula, collection: true
      attribute :disp_formula, DispFormula, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, MmlMath, collection: true
      attribute :abbrev, Abbrev, collection: true
      attribute :index_term, IndexTerm, collection: true
      attribute :index_term_range_end, IndexTermRangeEnd, collection: true
      attribute :milestone_end, MilestoneEnd, collection: true
      attribute :milestone_start, MilestoneStart, collection: true
      attribute :fn, Fn, collection: true
      attribute :target, Target, collection: true
      attribute :list, List, collection: true
      attribute :def_list, DefList, collection: true
      attribute :disp_quote, DispQuote, collection: true
      attribute :speech, Speech, collection: true
      attribute :statement, Statement, collection: true
      attribute :verse_group, VerseGroup, collection: true
      attribute :citation_alternatives, CitationAlternatives, collection: true
      attribute :element_citation, ElementCitation, collection: true
      attribute :mixed_citation, MixedCitation, collection: true
      attribute :nlm_citation, NlmCitation, collection: true
      attribute :p, Paragraph, collection: true
      attribute :answer, Answer, collection: true
      attribute :answer_set, AnswerSet, collection: true
      attribute :explanation, Explanation, collection: true
      attribute :question, Question, collection: true
      attribute :question_wrap, QuestionWrap, collection: true
      attribute :question_wrap_group, QuestionWrapGroup, collection: true

      xml do
        element "entry"
        namespace ::Niso::Jats::Namespaces::Oasis
        mixed_content

        map_content to: :content
        map_attribute "colname", to: :colname
        map_attribute "namest", to: :namest
        map_attribute "nameend", to: :nameend
        map_attribute "morerows", to: :morerows
        map_attribute "colsep", to: :colsep
        map_attribute "rowsep", to: :rowsep
        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "valign", to: :valign
        map_element "bold", to: :bold
        map_element "fixed-case", to: :fixed_case
        map_element "italic", to: :italic
        map_element "monospace", to: :monospace
        map_element "overline", to: :overline
        map_element "roman", to: :roman
        map_element "sans-serif", to: :sans_serif
        map_element "sc", to: :sc
        map_element "strike", to: :strike
        map_element "underline", to: :underline
        map_element "ruby", to: :ruby
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "sub", to: :sub
        map_element "sup", to: :sup
        map_element "xref", to: :xref
        map_element "break", to: :break
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "disp-formula", to: :disp_formula
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "list", to: :list
        map_element "def-list", to: :def_list
        map_element "disp-quote", to: :disp_quote
        map_element "speech", to: :speech
        map_element "statement", to: :statement
        map_element "verse-group", to: :verse_group
        map_element "citation-alternatives", to: :citation_alternatives
        map_element "element-citation", to: :element_citation
        map_element "mixed-citation", to: :mixed_citation
        map_element "nlm-citation", to: :nlm_citation
        map_element "p", to: :p
        map_element "answer", to: :answer
        map_element "answer-set", to: :answer_set
        map_element "explanation", to: :explanation
        map_element "question", to: :question
        map_element "question-wrap", to: :question_wrap
        map_element "question-wrap-group", to: :question_wrap_group
      end
    end

    class OasisColspec < ::Oasis::Etm::Colspec
      xml do
        element "colspec"
        namespace ::Niso::Jats::Namespaces::Oasis
      end
    end

    class OasisRow < ::Oasis::Etm::Row
      attribute :entries, OasisEntry, collection: true

      xml do
        element "row"
        namespace ::Niso::Jats::Namespaces::Oasis

        map_attribute "rowsep", to: :rowsep
        map_attribute "valign", to: :valign
        map_element "entry", to: :entries
      end
    end

    class OasisThead < ::Oasis::Etm::Thead
      attribute :rows, OasisRow, collection: true

      xml do
        element "thead"
        namespace ::Niso::Jats::Namespaces::Oasis
      end
    end

    class OasisTbody < ::Oasis::Etm::Tbody
      attribute :rows, OasisRow, collection: true

      xml do
        element "tbody"
        namespace ::Niso::Jats::Namespaces::Oasis
      end
    end

    class OasisTgroup < ::Oasis::Etm::Tgroup
      attribute :colspecs, OasisColspec, collection: true
      attribute :thead, OasisThead
      attribute :tbody, OasisTbody

      xml do
        element "tgroup"
        namespace ::Niso::Jats::Namespaces::Oasis
      end
    end

    class OasisTable < ::Oasis::Etm::Table
      attribute :tgroups, OasisTgroup, collection: true

      xml do
        element "table"
        namespace ::Niso::Jats::Namespaces::Oasis
      end

      # Override to_xml to not output empty table elements
      def to_xml(options = {})
        return nil if tgroups.nil? || tgroups.empty?

        super
      end
    end
  end
end
