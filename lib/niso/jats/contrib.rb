# frozen_string_literal: true

module Niso
  module Jats
    class Contrib < Lutaml::Model::Serializable
      attribute :contrib_type, :string
      attribute :corresp, :string
      attribute :deceased, :string
      attribute :equal_contrib, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :rid, :string
      attribute :specific_use, :string
      attribute :contrib_id, ContribId, collection: true
      attribute :anonymous, Anonymous, collection: true
      attribute :collab, Collab, collection: true
      attribute :collab_alternatives, CollabAlternatives, collection: true
      attribute :name, Name, collection: true
      attribute :name_alternatives, NameAlternatives, collection: true
      attribute :string_name, StringName, collection: true
      attribute :degrees, Degrees, collection: true
      attribute :address, Address, collection: true
      attribute :aff, Aff, collection: true
      attribute :aff_alternatives, AffAlternatives, collection: true
      attribute :author_comment, AuthorComment, collection: true
      attribute :bio, Bio, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :on_behalf_of, OnBehalfOf, collection: true
      attribute :role, Role, collection: true
      attribute :uri, Uri, collection: true
      attribute :xref, Xref, collection: true

      xml do
        root "contrib"

        map_attribute "contrib-type", to: :contrib_type
        map_attribute "corresp", to: :corresp
        map_attribute "deceased", to: :deceased
        map_attribute "equal-contrib", to: :equal_contrib
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
        map_attribute "specific-use", to: :specific_use
        map_element "contrib-id", to: :contrib_id
        map_element "anonymous", to: :anonymous
        map_element "collab", to: :collab
        map_element "collab-alternatives", to: :collab_alternatives
        map_element "name", to: :name
        map_element "name-alternatives", to: :name_alternatives
        map_element "string-name", to: :string_name
        map_element "degrees", to: :degrees
        map_element "address", to: :address
        map_element "aff", to: :aff
        map_element "aff-alternatives", to: :aff_alternatives
        map_element "author-comment", to: :author_comment
        map_element "bio", to: :bio
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "on-behalf-of", to: :on_behalf_of
        map_element "role", to: :role
        map_element "uri", to: :uri
        map_element "xref", to: :xref
      end
    end
  end
end
