# frozen_string_literal: true

puts '==> Creando Usuarios por defecto'
if User.all.blank?
  User.create!(id: 1, email: 'admin@email.com', password: 'root12345', password_confirmation: 'root12345')
  puts ': Realizado con exito.'
end
