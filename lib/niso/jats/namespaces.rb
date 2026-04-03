# frozen_string_literal: true

module Niso
  module Jats
    module Namespaces
      class Mathml < Lutaml::Xml::Namespace
        uri "http://www.w3.org/1998/Math/MathML"
        prefix_default "mml"
      end

      class Oasis < Lutaml::Xml::Namespace
        uri "http://www.niso.org/standards/z39-96/ns/oasis-exchange/table"
        prefix_default "oasis"
      end

      class Xlink < Lutaml::Xml::Namespace
        uri "http://www.w3.org/1999/xlink"
        prefix_default "xlink"
      end
    end
  end
end
