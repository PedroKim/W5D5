# Polls App

- User
    - username; make sure it's unique

- Poll
    - author_id => foreign key to user
    - title

- Question
    - poll_id => foreign key to poll
    - text

- AnswerChoice
    - question_id => foreign key to question
    <!-- - user_id => foreign key to user -->
    - text

- Response
    - answer_choice_id => foreign key to answer choice
    <!-- - question_id => foreign key to question -->
    - user_id => foreign key to user
