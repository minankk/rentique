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
  description: 'Reformation cassete silk black midi dress',
  rental_price: 15.00,
  user: user1,
  image_url: "https://cdn-images.farfetch-contents.com/19/64/86/55/19648655_44327960_1000.jpg"
)

item2 = Item.create!(
  category: 'Jackets',
  retail_price: 509.00,
  description: 'Hugo Boss black velevt tuxedo jacket',
  rental_price: 22.00,
  user: user2,
  image_url: "https://cdn-images.farfetch-contents.com/22/92/25/74/22922574_53402967_1000.jpg"
)

item3 = Item.create!(
  category: 'Suits',
  retail_price: 2680.00,
  description: 'Versace black crystal-embellished wool blazer',
  rental_price: 70.00,
  user: user3,
  image_url: "https://cdn-images.farfetch-contents.com/20/93/70/66/20937066_53224610_1000.jpg"
)

item4 = Item.create!(
  category: 'Accessories',
  retail_price: 435.00,
  description: 'Gucci GG buckle leather belt',
  rental_price: 10.00,
  user: user2,
  image_url: "https://cdn-images.farfetch-contents.com/20/21/44/58/20214458_50103932_1000.jpg"
)

Item.create!(
  category: 'Accessories',
  retail_price: 460.00,
  description: 'Cult gaia sirena shell clutch',
  rental_price: 11.00,
  user: user2,
  image_url: "cult bag copy.jpg"
)

Item.create!(
  category: 'Suits',
  retail_price: 1450.00,
  description: 'Armani navy blue wool suit',
  rental_price: 80.00,
  user: user2,
  image_url: "https://cdn-images.farfetch-contents.com/22/57/75/12/22577512_52610407_1000.jpg"
)

Item.create!(
  category: 'Dresses',
  retail_price: 303.00,
  description: 'Mui Mui floral embellished midi dress',
  rental_price: 26.00,
  user: user4,
  image_url: "https://cdn-images.farfetch-contents.com/19/29/90/14/19299014_43462083_1000.jpg"
)

Item.create!(
  category: 'Dresses',
  retail_price: 9150.00,
  description: 'Dolce & Gabbana corseted white silk gown',
  rental_price: 100.00,
  user: user5,
  image_url: "https://cdn-images.farfetch-contents.com/22/37/23/59/22372359_52817778_1000.jpg"
)

Item.create!(
  category: 'Accessories',
  retail_price: 1167.00,
  description: 'Jacquemus Le petit caluno top-handle bag',
  rental_price: 17.00,
  user: user3,
  image_url: "jac bag copy 2.jpg"
)

Item.create!(
  category: 'Accessories',
  retail_price: 6875.00,
  description: 'Tiffany & Co. Victoria pearl earrings',
  rental_price: 41.00,
  user: user1,
  image_url: "https://media.tiffany.com/is/image/Tiffany/EcomItemL2/tiffany-victoriaearrings-38050982_1031018_ED.jpg?&op_usm=2.0,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&&defaultImage=NoImageAvailableInternal&fmt=webp"
)

Item.create!(
  category: 'Jackets',
  retail_price: 2100.00,
  description: 'Lanvin single-breasted virgin wool blazer',
  rental_price: 31.00,
  user: user4,
  image_url: "https://cdn-images.farfetch-contents.com/20/12/50/28/20125028_50447983_1000.jpg"
)

Item.create!(
  category: 'Jakcets',
  retail_price: 5175.00,
  description: 'Ralph Lauren purple label Gregory Handmade Barathea Shawl Tuxedo',
  rental_price: 81.00,
  user: user1,
  image_url: "https://image.harrods.com/ralph-lauren-purple-label-2-piece-evening-suit_19243599_47474465_1000.jpg"
)

Item.create!(
  category: 'Jakcets',
  retail_price: 3650.00,
  description: 'Brunello Cucinelli Navy Single-breasted linen blazer',
  rental_price: 91.00,
  user: user1,
  image_url: "https://cdn-images.farfetch-contents.com/22/29/16/24/22291624_53012611_1000.jpg"
)

Item.create!(
  category: 'Shoes',
  retail_price: 1070.00,
  description: 'Tom Ford martin leather loafers',
  rental_price: 10.00,
  user: user1,
  image_url: "tf shoes copy.jpg"
)

Item.create!(
  category: 'Shoes',
  retail_price: 1095.00,
  description: 'Aquazzura tequila sandals',
  rental_price: 19.00,
  user: user1,
  image_url: "aqua heels copy.jpg"
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
