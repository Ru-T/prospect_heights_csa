AdminUser.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)

ShareType.create!(name: "Vegetable")
ShareType.create!(name: "Fruit")
ShareType.create!(name: "Eggs")
