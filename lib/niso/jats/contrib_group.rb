# frozen_string_literal: true

module Niso
  module Jats
    class ContribGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :contrib, Contrib, collection: true
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
        root "contrib-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_element "contrib", to: :contrib
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
