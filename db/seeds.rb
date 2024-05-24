# frozen_string_literal: true

if UserType.all.blank?
  puts '==> Creating default user types'

  UserType.create!(name: 'Admin')
  UserType.create!(name: 'default')

  puts ': Success.'
end

if User.all.blank?
  puts '==> Creating default user'

  User.create!(
    id: 1,
    email: 'admin@email.com',
    password: 'root12345',
    password_confirmation: 'root12345',
    name: 'Admin',
    last_name: 'User',
    phone_number: '123456789',
    user_type_id: UserType::ADMIN
  )

  User.create!(
    email: 'default@email.com',
    password: 'root12345',
    password_confirmation: 'root12345',
    name: 'default',
    last_name: 'User',
    phone_number: '123456755',
    user_type_id: UserType::DEFAULT
  )

  puts ': Success.'
end

if Exam.all.blank?
  puts '==> Creating default exams'

  exam1 = Exam.create!(title: 'The title', test_score: 10.0, date_of_realization: Date.today + 1.day)
  question1 = Question.create!(type_name: 'free_text', text: 'this is the question?', score: 10.1, is_scorable: true,
                               exam_id: exam1.id)
  Answer.create!(text: 'The Answerd', is_correct: false, question_id: question1.id)

  exam2 = Exam.create!(title: 'The title one more time', test_score: 10.0, date_of_realization: Date.today)
  question2 = Question.create!(type_name: 'multiple_choice', text: 'this is the other question?', score: 5.0,
                               is_scorable: true, exam_id: exam2.id)
  Answer.create!(text: 'The Answerd one', is_correct: true, question_id: question2.id)
  Answer.create!(text: 'The Answerd two', is_correct: true, question_id: question2.id)
  Answer.create!(text: 'The Answerd three', is_correct: false, question_id: question2.id)

  exam3 = Exam.create!(title: 'The title one more time', test_score: 10.0, date_of_realization: Date.today - 1.day)
  question3 = Question.create!(type_name: 'single_choice', text: 'this is the another question?', score: 5.0,
                               is_scorable: true, exam_id: exam3.id)
  Answer.create!(text: 'The Answerd one', is_correct: false, question_id: question3.id)
  Answer.create!(text: 'The Answerd two', is_correct: true, question_id: question3.id)
  Answer.create!(text: 'The Answerd three', is_correct: false, question_id: question3.id)

  puts ': Success.'
end
