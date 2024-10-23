# frozen_string_literal: true

module Niso
  module Jats
    class QuestionWrapGroup < Lutaml::Model::Serializable
      attribute :audience, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label
      attribute :title, Title
      attribute :subtitle, Subtitle, collection: true
      attribute :alt_title, AltTitle, collection: true
      attribute :question_preamble, QuestionPreamble
      attribute :question_wrap, QuestionWrap, collection: true

      xml do
        root "question-wrap-group"

        map_attribute "audience", to: :audience
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "subtitle", to: :subtitle
        map_element "alt-title", to: :alt_title
        map_element "question-preamble", to: :question_preamble
        map_element "question-wrap", to: :question_wrap
      end
    end
  end
end
