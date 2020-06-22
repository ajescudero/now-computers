# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.create(name: 'Sausalito', description: '')

Category.create(name: 'Storage', description: '')
Category.create(name: 'Electronics', description: '')
Category.create(name: 'Hardware', description: '')

Product.create(name: 'Samsung MU-PC500T/AM', description: '500GB Portable T7 SSD USB 3.2 Reads up to 1050MB/s Writes up to 1000MB/s Gray', release_date: "06-20-2020", category_id: 1, store_id: 1, price: 60.99)
Product.create(name: 'WD WDBYFT0040BBK My Passport', description: '4TB 2.5in USB 3.0 Portable External Hard Drive Black', release_date: "06-20-2020", category_id: 1, store_id: 1, price: 82.99)
Product.create(name: 'Portable Wearable Mini Fans', description: 'Portable Wearable Mini Fans Black', release_date: "06-20-2020", category_id: 2, store_id: 1, price: 30.00)
Product.create(name: 'REMAX Super PD', description: 'Super PD Fast Charging USB-C To USB-C DataCable RC-151cc Silver', release_date: "06-20-2020", category_id: 2, store_id: 1, price: 32.00)
Product.create(name: 'Asus ROG Strix Z390-E Gaming', description: 'Asus ROG Strix Z390-E Gaming Intel Z390 LGA 1151Gen8/9 Only DDR4 *4 SLI/CrossFire Ready M.2 *2 Slots', release_date: "06-20-2020", category_id: 3, store_id: 1, price: 249.95)
Product.create(name: 'Asus TUF GAMING B550M-PLUS (WI-FI) MATX', description: 'Motherboard Socket AM4 AMD B550 Chipset DDR4 4400MHz (Max 128GB) M.2 USB 3.2', release_date: "06-20-2020", category_id: 3, store_id: 1, price: 179.95)


