module Niso
  module Jats
    class ContribModel
      attr_accessor :contrib_type, :corresp, :deceased, :equal_contrib, :hreflang, :id, :rid, :specific_use,
                    :contrib_id, :anonymous, :collab, :collab_alternatives, :name, :name_alternatives, :string_name,
                    :degrees, :address, :aff, :aff_alternatives, :author_comment, :bio, :email, :ext_link,
                    :on_behalf_of, :role, :uri, :xref

      def aff_xref
        xref.select { |a| a.ref_type == "aff" }
      end
    end
  end
end
