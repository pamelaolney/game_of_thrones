# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

whitehouse = House.create(name: "The White House", image_url: "http://www.whorunsgov.com/wp-content/uploads/2015/11/white-house.jpg", state: "Washington DC")
acme = House.create(name: "ACME", image_url: "http://doyle.house.gov/sites/doyle.house.gov/files/styles/office_map/public/cannon%20cropped.jpg?itok=DvT0_RoT", state: "Washington DC")
popeoffice = House.create(name: "Olivia Pope Office", image_url: "https://upload.wikimedia.org/wikipedia/commons/0/03/Executive_Office_Building,_Washington,_D.C._in_2012.JPG", state: "Washington DC")
defiance = House.create(name: "Defiance Voting", image_url: "https://farm4.staticflickr.com/3143/2637289446_d3fc7d0c7f_z.jpg", state: "Ohio")
beach = House.create(name: "Under the Sun", image_url: "http://cdn.freshome.com/wp-content/uploads/2008/11/hideaway-island-house-by-frank-macchia-1.jpg", state: "Puerto Rico")

olivia = Character.create(name: "Olivia Pope", image_url: "https://upload.wikimedia.org/wikipedia/en/c/c1/Olivia_Pope_-_ABC.jpg", title: "Business Owner", house: popeoffice )
fitz = Character.create(name: "Fitz", image_url: "http://vignette2.wikia.nocookie.net/scandal/images/f/fd/Fitz.jpg/revision/latest?cb=20121207123713", title: "President", house: whitehouse )
cyrus = Character.create(name: "Cyrus", image_url: "http://vignette3.wikia.nocookie.net/scandal/images/0/09/Cyrus-square1.jpg/revision/latest?cb=20130505054517", title: "Secretary of State", house: whitehouse )
