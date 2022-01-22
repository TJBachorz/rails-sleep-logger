# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sleeplog.destroy_all
User.destroy_all

tj = User.create(
    email: "Tjbachorz@gmail.com",
    password: "hi_there"
)

Sleeplog.create(
    night_of_date:"10/20/2021",
    bedtime:"11:55:00 PM",
    approximate_sleep_time:"12:40:00 AM",
    sleep_interrupted:1,
    sleep_lost_from_interruptions:0.50,
    wake_up_time:"08:45:00 AM",
    ate_spicy:true,
    drank_alcohol:false,
    sleep_meds:true,
    user: tj,
    notes: "slept well"
)