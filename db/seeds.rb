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
    picture: "https://wallpaperhdzone.com/wp-content/uploads/2016/09/wallpaper-atlanta-HD2.jpg"
)
City.create(
    name: "San Francisco",
    picture: "https://images.pexels.com/photos/7653/pexels-photo.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb"
)
City.create(
    name: "London",
    picture: "https://images.pexels.com/photos/34729/pexels-photo.jpg?w=1260&h=750&auto=compress&cs=tinysrgb"
)