# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
Post.destroy_all
City.destroy_all
City.create(
    name: "Atlanta",
    picture: "https://media.bizj.us/view/img/3972271/skyline-of-atlanta*750xx1600-900-0-1384.jpg"
)
City.create(
    name: "San Francisco",
    picture: "https://i.ytimg.com/vi/DrLNmSZ1Q44/maxresdefault.jpg"
)
City.create(
    name: "London",
    picture: "https://cdn.londonandpartners.com/assets/73295-640x360-london-skyline-ns.jpg"
)