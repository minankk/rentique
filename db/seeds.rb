# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
Item.destroy_all
User.destroy_all

# Create users
User.create!(
  email: 'user1@example.com',
  username: 'user1',
  mobile: '1234567890',
  address: '123 Main Street',
  password: 'password'
)

User.create!(
  email: 'user2@example.com',
  username: 'user2',
  mobile: '9876543210',
  address: '456 Elm Street',
  password: 'password'
)

User.create!(
  email: 'minankahai@gmail.com',
  username: 'minank',
  mobile: '9876543210',
  address: '44 Elm Street',
  password: 'password'
)

User.create!(
  email: 'ved_l@gmail.com',
  username: 'vedl',
  mobile: '9876543210',
  address: '44 main Street',
  password: 'password'
)

User.create!(
  email: 'justin_a@gmail.com',
  username: 'justina',
  mobile: '9876543210',
  address: '40 Elm Street',
  password: 'password'
)

User.create!(
  email: 'gerlad_w@gmail.com',
  username: 'geraldw',
  mobile: '9876543210',
  address: '32 Main Street',
  password: 'password'
)


# Create items
Item.create!(
  category: 'Dresses',
  retail_price: 260.00,
  description: 'Revolve elegant black midi dress.',
  rental_price: 40.00,
  user_id: 1
)

Item.create!(
  category: 'Jackets',
  retail_price: 150.00,
  description: 'Hugo Boss black satin suit jacket .',
  rental_price: 35.00,
  user_id: 2
)

Item.create!(
  category: 'Formal Wear',
  retail_price: 300.00,
  description: 'Versace black silk tuxedo with gold accents.',
  rental_price: 70.00,
  user_id: 3
)

Item.create!(
  category: 'Accessories',
  retail_price: 50.00,
  description: 'Gucci leather belt with silver buckle.',
  rental_price: 10.00,
  user_id: 2
)

Item.create!(
  category: 'Accessories',
  retail_price: 650.00,
  description: 'Cult gaia rafia clutch',
  rental_price: 11.00,
  user_id: 2
)

Item.create!(
  category: 'Formal Wear',
  retail_price: 350.00,
  description: 'Armani navy blue wool suit.',
  rental_price: 80.00,
  user_id: 2
)

Item.create!(
  category: 'Formal Wear',
  retail_price: 280.00,
  description: 'Calvin Klein classic black dress.',
  rental_price: 60.00,
  user_id: 4
)

Item.create!(
  category: 'Formal Wear',
  retail_price: 400.00,
  description: 'Dolce & Gabbana white silk gown.',
  rental_price: 100.00,
  user_id: 5
)

Item.create!(
  category: 'Accessories',
  retail_price: 70.00,
  description: 'Prada leather clutch with gold chain.',
  rental_price: 20.00,
  user_id: 3
)

Item.create!(
  category: 'Accessories',
  retail_price: 60.00,
  description: 'Tiffany & Co. pearl earrings.',
  rental_price: 15.00,
  user_id: 1
)

# Create bookings
Booking.create!(
  user_id: 1,
  item_id: 2,
  start_date: Date.today,
  end_date: Date.today + 3.days
)

Booking.create!(
  user_id: 2,
  item_id: 3,
  start_date: Date.today - 2.days,
  end_date: Date.today + 1.day
)

Booking.create!(
  user_id: 3,
  item_id: 1,
  start_date: Date.today + 1.day,
  end_date: Date.today + 5.days
)

Booking.create!(
  user_id: 4,
  item_id: 2,
  start_date: Date.today - 1.day,
  end_date: Date.today + 2.days
)

Booking.create!(
  user_id: 5,
  item_id: 3,
  start_date: Date.today - 3.days,
  end_date: Date.today + 4.days
)

Booking.create!(
  user_id: 6,
  item_id: 6,
  start_date: Date.today - 1.day,
  end_date: Date.today + 3.days
)

Booking.create!(
  user_id: 4,
  item_id: 7,
  start_date: Date.today + 2.days,
  end_date: Date.today + 5.days
)

Booking.create!(
  user_id: 3,
  item_id: 8,
  start_date: Date.today - 3.days,
  end_date: Date.today + 2.days
)
