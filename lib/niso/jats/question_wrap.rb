# frozen_string_literal: true

require "lutaml/model"


module Niso
  module Jats
    class QuestionWrap < Lutaml::Model::Serializable
      attribute :audience, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :question, Question
      attribute :answer, Answer
      attribute :answer_set, AnswerSet
      attribute :explanation, Explanation, collection: true

      xml do
        root "question-wrap"

        map_attribute "audience", to: :audience
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "question", to: :question
        map_element "answer", to: :answer
        map_element "answer-set", to: :answer_set
        map_element "explanation", to: :explanation
      end
    end
  end
end
