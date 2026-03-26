# frozen_string_literal: true

module Niso
  module Jats
    module Namespaces
      class Mathml < Lutaml::Xml::Namespace
        uri "http://www.w3.org/1998/Math/MathML"
        prefix_default "mml"
      end
    end
  end
end
