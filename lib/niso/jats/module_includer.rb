# frozen_string_literal: true

module Niso
  module Jats
    class ModuleIncluder
      TARGET_CLASSES = %w[
        AltTitle
        ArticleTitle
        Attrib
        Bold
        Comment
        DefHead
        FixedCase
        Italic
        MetaValue
        Monospace
        Overline
        Roman
        Sc
        See
        SeeAlso
        Strike
        Sub
        Subtitle
        Sup
        Term
        TermHead
        Title
        TransSubtitle
        TransTitle
        Underline
      ].freeze

      def self.include_basic_text
        TARGET_CLASSES.each do |class_name|
          full_class_name = "Niso::Jats::#{class_name}"
          klass = Object.const_get(full_class_name)
          klass.include Niso::Jats::BasicText if klass.is_a?(Class)
        rescue NameError
          puts "Class #{full_class_name} not found."
        end
      end
    end
  end
end

Niso::Jats::ModuleIncluder.include_basic_text
