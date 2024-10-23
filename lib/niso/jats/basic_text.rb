
module Niso
  module Jats
    module BasicText
      def self.included(base)
        base.attribute :email, Email, collection: true
        base.attribute :ext_link, ExtLink, collection: true
        base.attribute :uri, Uri, collection: true
        base.attribute :inline_supplementary_material, InlineSupplementaryMaterial, collection: true
        base.attribute :related_article, RelatedArticle, collection: true
        base.attribute :related_object, RelatedObject, collection: true
        base.attribute :bold, Bold, collection: true
        base.attribute :fixed_case, FixedCase, collection: true
        base.attribute :italic, Italic, collection: true
        base.attribute :monospace, Monospace, collection: true
        base.attribute :overline, Overline, collection: true
        base.attribute :roman, Roman, collection: true
        base.attribute :sans_serif, SansSerif, collection: true
        base.attribute :sc, Sc, collection: true
        base.attribute :strike, Strike, collection: true
        base.attribute :underline, Underline, collection: true
        base.attribute :ruby, Ruby, collection: true
        base.attribute :alternatives, Alternatives, collection: true
        base.attribute :inline_graphic, InlineGraphic, collection: true
        base.attribute :inline_media, InlineMedia, collection: true
        base.attribute :private_char, PrivateChar, collection: true
        base.attribute :chem_struct, ChemStruct, collection: true
        base.attribute :inline_formula, InlineFormula, collection: true
        base.attribute :tex_math, TexMath, collection: true
        base.attribute :mml_math, :string, collection: true
        base.attribute :abbrev, Abbrev, collection: true
        base.attribute :index_term, IndexTerm, collection: true
        base.attribute :index_term_range_end, IndexTermRangeEnd, collection: true
        base.attribute :milestone_end, MilestoneEnd, collection: true
        base.attribute :milestone_start, MilestoneStart, collection: true
        base.attribute :named_content, NamedContent, collection: true
        base.attribute :styled_content, StyledContent, collection: true
        base.attribute :fn, Fn, collection: true
        base.attribute :target, Target, collection: true
        base.attribute :xref, Xref, collection: true
        base.attribute :sub, Sub, collection: true
        base.attribute :sup, Sup, collection: true
      end
    end
  end
end
