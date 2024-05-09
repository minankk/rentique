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
# Item.destroy_all
User.destroy_all

# Create users
user1 = User.create!(
  email: 'user1@example.com',
  username: 'user1',
  mobile: '1234567890',
  address: '123 Main Street',
  password: 'password'
)

user2 = User.create!(
  email: 'user2@example.com',
  username: 'user2',
  mobile: '9876543210',
  address: '456 Elm Street',
  password: 'password'
)

user3 = User.create!(
  email: 'minankahai@gmail.com',
  username: 'minank',
  mobile: '9876543210',
  address: '44 Elm Street',
  password: 'password'
)

user4 = User.create!(
  email: 'ved_l@gmail.com',
  username: 'vedl',
  mobile: '9876543210',
  address: '44 main Street',
  password: 'password'
)

user5 = User.create!(
  email: 'justin_a@gmail.com',
  username: 'justina',
  mobile: '9876543210',
  address: '40 Elm Street',
  password: 'password'
)

user6 = User.create!(
  email: 'gerlad_w@gmail.com',
  username: 'geraldw',
  mobile: '9876543210',
  address: '32 Main Street',
  password: 'password'
)


# Create items
item1 = Item.create!(
  category: 'Dresses',
  retail_price: 163.00,
  description: 'Reformation elegant black midi dress',
  rental_price: 15.00,
  user: user1

)

item2 = Item.create!(
  category: 'Jackets',
  retail_price: 509.00,
  description: 'Hugo Boss black satin suit jacket',
  rental_price: 22.00,
  user: user2
)

item3 = Item.create!(
  category: 'Suits',
  retail_price: 2680.00,
  description: 'Versace black crystal-embellished wool blazer',
  rental_price: 70.00,
  user: user3
)

item4 = Item.create!(
  category: 'Accessories',
  retail_price: 435.00,
  description: 'Gucci GG buckle leather belt',
  rental_price: 10.00,
  user: user2
)

Item.create!(
  category: 'Accessories',
  retail_price: 460.00,
  description: 'Cult gaia sirena shell clutch',
  rental_price: 11.00,
  user: user2
)

Item.create!(
  category: 'Suits',
  retail_price: 1450.00,
  description: 'Armani navy blue wool suit',
  rental_price: 80.00,
  user: user2
)

Item.create!(
  category: 'Dresses',
  retail_price: 303.00,
  description: 'Calvin Klein classic black slip dress',
  rental_price: 26.00,
  user: user4
)

Item.create!(
  category: 'Dresses',
  retail_price: 9150.00,
  description: 'Dolce & Gabbana corseted white silk gown',
  rental_price: 100.00,
  user: user5
)

Item.create!(
  category: 'Accessories',
  retail_price: 1167.00,
  description: 'Jacquemus Le petit caluno top-handle bag',
  rental_price: 17.00,
  user: user3
)

Item.create!(
  category: 'Accessories',
  retail_price: 6875.00,
  description: 'Tiffany & Co. Victoria pearl earrings.',
  rental_price: 41.00,
  user: user1
)

Item.create!(
  category: 'Jackets',
  retail_price: 2551.00,
  description: 'Lanvin double-breasted wool blazer',
  rental_price: 31.00,
  user: user4
)

Item.create!(
  category: 'Jakcets',
  retail_price: 5175.00,
  description: 'Ralph Lauren purple label Gregory Handmade Barathea Shawl Tuxedo',
  rental_price: 81.00,
  user: user1
)

Item.create!(
  category: 'Jakcets',
  retail_price: 3650.00,
  description: 'Brunello Cucinelli Navy Single-breasted linen blazer',
  rental_price: 91.00,
  user: user1
)

# Create bookings
Booking.create!(
  user: user1,
  item: item1,
  start_date: Date.today,
  end_date: Date.today + 3.days
)

Booking.create!(
  user: user2,
  item: item2,
  start_date: Date.today - 2.days,
  end_date: Date.today + 1.day
)

Booking.create!(
  user: user3,
  item: item3,
  start_date: Date.today + 1.day,
  end_date: Date.today + 5.days
)

Booking.create!(
  user: user4,
  item: item4,
  start_date: Date.today - 1.day,
  end_date: Date.today + 2.days
)
