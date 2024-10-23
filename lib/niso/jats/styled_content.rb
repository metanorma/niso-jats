# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class StyledContent < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :alt, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :style, :string
      attribute :style_detail, :string
      attribute :style_type, :string
      attribute :toggle, :string
      attribute :lang, :string
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :inline_supplementary_material, InlineSupplementaryMaterial, collection: true
      attribute :related_article, RelatedArticle, collection: true
      attribute :related_object, RelatedObject, collection: true
      attribute :address, Address, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :answer, Answer, collection: true
      attribute :answer_set, AnswerSet, collection: true
      attribute :array, Array, collection: true
      attribute :block_alternatives, BlockAlternatives, collection: true
      attribute :boxed_text, BoxedText, collection: true
      attribute :chem_struct_wrap, ChemStructWrap, collection: true
      attribute :code, Code, collection: true
      attribute :explanation, Explanation, collection: true
      attribute :fig, Fig, collection: true
      attribute :fig_group, FigGroup, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :question, Question, collection: true
      attribute :question_wrap, QuestionWrap, collection: true
      attribute :question_wrap_group, QuestionWrapGroup, collection: true
      attribute :supplementary_material, SupplementaryMaterial, collection: true
      attribute :table_wrap, TableWrap, collection: true
      attribute :table_wrap_group, TableWrapGroup, collection: true
      attribute :disp_formula, DispFormula, collection: true
      attribute :disp_formula_group, DispFormulaGroup, collection: true
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
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :inline_formula, InlineFormula, collection: true
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, :string, collection: true
      attribute :abbrev, Abbrev, collection: true
      attribute :index_term, IndexTerm, collection: true
      attribute :index_term_range_end, IndexTermRangeEnd, collection: true
      attribute :milestone_end, MilestoneEnd, collection: true
      attribute :milestone_start, MilestoneStart, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :fn, Fn, collection: true
      attribute :target, Target, collection: true
      attribute :xref, Xref, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true
      attribute :disp_quote, DispQuote, collection: true
      attribute :speech, Speech, collection: true
      attribute :statement, Statement, collection: true
      attribute :verse_group, VerseGroup, collection: true

      xml do
        root "styled-content"

        map_content to: :content
        map_attribute "alt", to: :alt
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "style", to: :style
        map_attribute "style-detail", to: :style_detail
        map_attribute "style-type", to: :style_type
        map_attribute "toggle", to: :toggle
        map_attribute "lang", to: :lang
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "inline-supplementary-material", to: :inline_supplementary_material
        map_element "related-article", to: :related_article
        map_element "related-object", to: :related_object
        map_element "address", to: :address
        map_element "alternatives", to: :alternatives
        map_element "answer", to: :answer
        map_element "answer-set", to: :answer_set
        map_element "array", to: :array
        map_element "block-alternatives", to: :block_alternatives
        map_element "boxed-text", to: :boxed_text
        map_element "chem-struct-wrap", to: :chem_struct_wrap
        map_element "code", to: :code
        map_element "explanation", to: :explanation
        map_element "fig", to: :fig
        map_element "fig-group", to: :fig_group
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "question", to: :question
        map_element "question-wrap", to: :question_wrap
        map_element "question-wrap-group", to: :question_wrap_group
        map_element "supplementary-material", to: :supplementary_material
        map_element "table-wrap", to: :table_wrap
        map_element "table-wrap-group", to: :table_wrap_group
        map_element "disp-formula", to: :disp_formula
        map_element "disp-formula-group", to: :disp_formula_group
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
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "def-list", to: :def_list
        map_element "list", to: :list
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
        map_element "sub", to: :sub
        map_element "sup", to: :sup
        map_element "disp-quote", to: :disp_quote
        map_element "speech", to: :speech
        map_element "statement", to: :statement
        map_element "verse-group", to: :verse_group
      end
    end
  end
end
