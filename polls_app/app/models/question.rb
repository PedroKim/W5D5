# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  poll_id    :integer          not null
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
    # answer_choices
    has_many :answer_choices,
        primary_key: :id,
        foreign_key: :question_id,
        class_name: :AnswerChoice

    # poll
    belongs_to :poll,
        primary_key: :id,
        foreign_key: :poll_id,
        class_name: :Poll
    
end
