# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
    # question
    belongs_to :question,
        primary_key: :id,
        foreign_key: :question_id,
        class_name: :Question

    # responses
    has_many :responses,
        primary_key: :id, 
        foreign_key: :answer_choice_id,
        class_name: :Response
    
end
