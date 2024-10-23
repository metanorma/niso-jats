module Niso
  module Jats
    module BasicText
      require_relative "target"

      def self.included(base) # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
        base.class_eval do
          attribute :email, Email, collection: true
          attribute :ext_link, ExtLink, collection: true
          attribute :uri, Uri, collection: true
          attribute :inline_supplementary_material,
                    InlineSupplementaryMaterial, collection: true
          attribute :related_article, RelatedArticle, collection: true
          attribute :related_object, RelatedObject, collection: true
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
          attribute :alternatives, Alternatives, collection: true
          attribute :inline_graphic, InlineGraphic, collection: true
          attribute :inline_media, InlineMedia, collection: true
          attribute :private_char, PrivateChar, collection: true
          attribute :chem_struct, ChemStruct, collection: true
          attribute :inline_formula, InlineFormula, collection: true
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
        end
      end
    end
  end
end
