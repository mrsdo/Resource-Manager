require 'faker'

puts "Adding Listings table data..."
4.times do
  Listing.create({
                   "name" => Faker::Name.unique.name,
                   "tag_name" => Faker::Marketing.buzzwords,
                   "status" => "Active", # Active/Inactive Faker?
                   "first_listed" => Faker::Date.between(from: '2001-03-11', to: '2021-03-11'),
                   "bedrooms" => Faker.Number.between(from: 1, to: 5) + "BR",
                   "bathrooms" => Faker::Number.between(from: 1, to: 5) + "BA",
                   "summary" => Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
                   "sqft" => Faker::Number.between(from: 900, to: 6000) + "sq. ft.",
                   "asking_price" => Faker::Commerce.price(range: 10_000..30_000_000.0, as_string: true),
                   "photo_1" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale?random=1']),
                   "photo_2" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale?random=2']),
                   "photo_3" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale?random=3']),
                   "photo_4" => Faker::LoremFlickr.image(size: "320x240", search_terms: ['homes_for_sale?random=4']),
                   "user_id" => User.ids.sample,
                   "phone" => Faker::PhoneNumber.unique.cell_phone,
                   "community" => "Homely"
                 })
end
