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

  puts ': Success.'
end
