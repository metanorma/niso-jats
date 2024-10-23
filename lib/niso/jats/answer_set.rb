# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class AnswerSet < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label
      attribute :title, Title
      attribute :subtitle, Subtitle, collection: true
      attribute :alt_title, AltTitle, collection: true
      attribute :answer, Answer, collection: true
      attribute :p, Paragraph, collection: true
      attribute :explanation, Explanation, collection: true

      xml do
        root "answer-set"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "subtitle", to: :subtitle
        map_element "alt-title", to: :alt_title
        map_element "answer", to: :answer
        map_element "p", to: :p
        map_element "explanation", to: :explanation
      end
    end
  end
end
