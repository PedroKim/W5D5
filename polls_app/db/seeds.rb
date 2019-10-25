# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  author_id  :integer          not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  poll_id    :integer          not null
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

users = User.create([
  { username: 'john' },
  { username: 'jay' },
  { username: 'juan' },
  { username: 'peter' },
  { username: 'frank' },
  { username: 'tom' }
])

polls = Poll.create([
  { title: 'Baseball Championship 2019', author_id: users[2].id },
  { title: 'Democratic Election 2019', author_id: users[3].id}
])

questions = Question.create([
    { text: 'Who is going to be the MVP?', poll_id: polls.first.id },
    { text: 'Who is going to win?', poll_id: polls.first.id },
    { text: 'Who is your favorite candidate?', poll_id: polls.second.id },
    { text: 'Who is going to win the election?', poll_id: polls.second.id }
])

answer_choices = AnswerChoice.create([
    { text: 'Alex Bregman', question_id: questions.first.id },
    { text: 'Mike Trout', question_id: questions.first.id },
    { text: 'Mookie Betts', question_id: questions.first.id },
    { text: 'Houston Astros', question_id: questions.second.id },
    { text: 'Washington Nationals', question_id: questions.second.id },
    { text: 'Bernie Sanders', question_id: questions.third.id },
    { text: 'Joe Biden', question_id: questions.third.id },
    { text: 'Julian Castro', question_id: questions.third.id },
    { text: 'Bernie Sanders', question_id: questions.fourth.id },
    { text: 'Joe Biden', question_id: questions.fourth.id },
    { text: 'Julian Castro', question_id: questions.fourth.id },
])

response = Response.create([
    { user_id: users.first.id, answer_choice_id: answer_choices[0].id },
    { user_id: users.first.id, answer_choice_id: answer_choices[3].id },
    { user_id: users.third.id, answer_choice_id: answer_choices[5].id },
    { user_id: users.third.id, answer_choice_id: answer_choices[8].id },
    { user_id: users.fourth.id, answer_choice_id: answer_choices[1].id },
    { user_id: users.fourth.id, answer_choice_id: answer_choices[4].id }
])