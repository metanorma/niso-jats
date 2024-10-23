# frozen_string_literal: true

require "lutaml/model"

require_relative "address"
require_relative "alternatives"
require_relative "answer"
require_relative "answer_set"
require_relative "array"
require_relative "block_alternatives"
require_relative "boxed_text"
require_relative "chem_struct_wrap"
require_relative "code"
require_relative "def_list"
require_relative "disp_formula"
require_relative "disp_formula_group"
require_relative "disp_quote"
require_relative "explanation"
require_relative "fig"
require_relative "fig_group"
require_relative "graphic"
require_relative "list"
require_relative "media"
require_relative "paragraph"
require_relative "preformat"
require_relative "question"
require_relative "question_wrap"
require_relative "question_wrap_group"
require_relative "related_article"
require_relative "related_object"
require_relative "sec"
require_relative "sig_block"
require_relative "speech"
require_relative "statement"
require_relative "supplementary_material"
require_relative "table_wrap"
require_relative "table_wrap_group"
require_relative "tex_math"
require_relative "verse_group"

module Niso
  module Jats
    class Body < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string
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
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, :string, collection: true
      attribute :p, Paragraph, collection: true
      attribute :related_article, RelatedArticle, collection: true
      attribute :related_object, RelatedObject, collection: true
      attribute :disp_quote, DispQuote, collection: true
      attribute :speech, Speech, collection: true
      attribute :statement, Statement, collection: true
      attribute :verse_group, VerseGroup, collection: true
      attribute :sec, Sec, collection: true
      attribute :sig_block, SigBlock

      xml do
        root "body"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
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
        map_element "def-list", to: :def_list
        map_element "list", to: :list
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "p", to: :p
        map_element "related-article", to: :related_article
        map_element "related-object", to: :related_object
        map_element "disp-quote", to: :disp_quote
        map_element "speech", to: :speech
        map_element "statement", to: :statement
        map_element "verse-group", to: :verse_group
        map_element "sec", to: :sec
        map_element "sig-block", to: :sig_block
      end
    end
  end
end