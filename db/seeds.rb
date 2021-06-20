# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concerts = Category.create(name: "Concerts")
festivals = Category.create(name: "Festivals")
shows = Category.create(name: "Shows")

Event.create(
    category_id: concerts.id,
    image_url: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_286,q_75,w_357/https://assets.simpleviewinc.com/simpleview/image/upload/crm/kansascityks/MPAC_-_Styx_397A9FC1-5056-B3A8-49DF6874CE44E46C_3984e9a6-5056-b3a8-49afa76c209d95e2.jpg",
    name: "Styx",
    summary: "Join us for STYX in concert! Doors will open at 5:00 PM. Masks are encouraged but will not be required. Tickets can be purchased via Ticketmaster.com.",
    when: "Fri, Jun 25",
    time: "7 – 11 PM",
    where: "Azura Amphitheater 633 N 130th St, Bonner Springs, KS")