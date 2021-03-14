# frozen_string_literal: true

puts 'Adding Listings'
num = 0
30.times do
  percent = num / 30 * 100
  sleep(0.05)
  print "...#{num += 1} seconds remaining\r"
  Listing.create({
                   'name' => Faker::Address.street_name,
                   'tag_name' => Faker::Marketing.buzzwords,
                   'status' => "#{(1..2).to_a.sample}", # Active/Inactive Faker?
                   'first_listed' => Faker::Date.between(from: '2001-03-11', to: '2021-03-14'),
                   'bedrooms' => "#{(1..5).to_a.sample} BR",
                   'bathrooms' => "#{(1..5).to_a.sample} BA",
                   'summary' => Faker::Lorem.paragraph(sentence_count: 2, supplemental: false,
                                                       random_sentences_to_add: 4),
                   'sqft' => "#{(900..6000).to_a.sample} sq. ft.",
                   # 'asking_price' => Faker::Commerce.price(range: 10_000..30_000_000, as_string: true),
                   'asking_price' => "$#{(10_000..30_000_000).to_a.sample}",
                   'photo_1' => Faker::LoremFlickr.image(size: '320x240', search_terms: ['homes_for_sale?random=1']),
                   'photo_2' => Faker::LoremFlickr.image(size: '320x240', search_terms: ['homes_for_sale?random=2']),
                   'photo_3' => Faker::LoremFlickr.image(size: '320x240', search_terms: ['homes_for_sale?random=3']),
                   'photo_4' => Faker::LoremFlickr.image(size: '320x240', search_terms: ['homes_for_sale?random=4']),
                   # "user_id" => User.ids.sample,
                   'phone' => Faker::PhoneNumber.unique.cell_phone,
                   'community' => 'Homely'
                 })
  num += 1

  system('clear')
end
