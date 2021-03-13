# Listings Manager
Using Sinatra, ActiveRecord, Mysql2, and the Faker gem, I’ll create a database, use migration to create the Listings Table, then populate the listings table, with images.

Once the data has been seeded, I’ll need to create and MVC to navigate that data.  This includes the ability to CRUD.

Finally, I will associate this application to users, with id and session credentials to ensure the safety of the data.  A long-term goal is to also associate the listings to communities and agencies.

I’ll generate the database and tables, then use the gem;  Faker to generate fake listings:

```
class CreateListings < ActiveRecord::Migration[6.1]
    def change
        create_table :listings do |t|
            t.string :name
            t.string :tag_name
            t.string :status
            t.date :first_listed
            t.string :bedrooms
            t.string :bathrooms
            t.string :summary
            t.string :sqft
            t.string :asking_price
            t.string :photo_1
            t.string :photo_2
            t.string :photo_3
            t.string :photo_4
            t.string :phone
            t.string :community
            
            t.timestamps null: false
        end
    end
end
```
## Getting Started - Baseline Files
I will not be using Corneal to create this project. I will be using the following:
### Project Development Resources
- https://docs.google.com/document/d/e/2PACX-1vR_jpC1g9arR_SajVFdnWFn5kpAgFiWd-aGGWUPvTjFyJyJv6v1Z6zPunRnU7W0HLGSR193bvL-pDSz/pub


