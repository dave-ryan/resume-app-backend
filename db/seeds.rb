# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# testing pull request

# rails g model Skill skill_name:string
# rails g model Project name:string description:text url:string screenshot:string
student = Student.create!(first_name: "Bob", last_name: "Johnson", email: "fake@test.com", password: "password", short_bio: "taslkdja", linkedin_url: "aslkdj", twitter_handle: "asldkjas", personal_blog: "alsdkj", phone_number: "123123", online_resume_url: "asldkjasldk", github_url: "asldkjasdklj", photo: "laksda")
