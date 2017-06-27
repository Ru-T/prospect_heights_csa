AdminUser.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)

ShareType.create!(name: "Vegetable", size: 0, price: 620)
ShareType.create!(name: "Vegetable", size: 1, price: 310)
ShareType.create!(name: "Fruit", size: 0, price: 158)
ShareType.create!(name: "Fruit", size: 1, price: 79)
ShareType.create!(name: "Eggs", size: 0, price: 130)
ShareType.create!(name: "Eggs", size: 1, price: 65)
ShareType.create!(name: "The Carnivore", price: 270)
ShareType.create!(name: "The Vegetarian", price: 240)
ShareType.create!(name: "The Omnivore", price: 300)
