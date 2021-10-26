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
student = Student.create!(first_name: "Tim", last_name: "Benning", email: "test@test.com", password: "password", short_bio: "This is my bio.", linkedin_url: "tim_linkedIn.com", twitter_handle: "tim_twitter", personal_blog: "Tims_blog", phone_number: "555-234-2222", online_resume_url: "tim_resume.com", github_url: "tim_github_test", photo: "ugly_man")
student = Student.create!(first_name: "Sally", last_name: "Jones", email: "sally@test.com", password: "password", short_bio: "This is the bio for Sally.", linkedin_url: "sally_linkedIn.com", twitter_handle: "sally_twitter", personal_blog: "sally_blog.com", phone_number: "555-777-1111", online_resume_url: "sally_resume.com", github_url: "sally_github_test", photo: "sally_girl")

education = Education.create!(start_date: "2000-01-01", end_date: "2004-01-01", degree: "Psychology", university_name: "University of Texas", details: "none", student_id: 1)
education = Education.create!(start_date: "2004-01-01", end_date: "2008-01-01", degree: "Biology", university_name: "University of Alabama", details: "none", student_id: 2)
education = Education.create!(start_date: "2008-01-01", end_date: "2012-01-01", degree: "Software", university_name: "University of Chicago", details: "none", student_id: 3)

experience = Experience.create!(start_date: "2000-01-01", end_date: "2004-01-01", job_title: "Professor", company_name: "University of Texas", details: "Good Teacher", student_id: 1)
experience = Experience.create!(start_date: "2000-01-01", end_date: "2004-01-01", job_title: "Doctor", company_name: "Hospital", details: "Bad doctor", student_id: 2)
experience = Experience.create!(start_date: "2000-01-01", end_date: "2004-01-01", job_title: "Software Engineer", company_name: "Actualize", details: "So-so engineer", student_id: 3)

project = Project.create!(name: "Project 1", description: "Learning new things", url: "projecttest.com", screenshot: "none", student_id: 1)
project = Project.create!(name: "Project 2", description: "Learning cool things", url: "projecttest2.com", screenshot: "none", student_id: 2)
project = Project.create!(name: "Project 3", description: "Learning fun things", url: "projecttest3.com", screenshot: "none", student_id: 3)

skill = Skill.create(skill_name: "Kung Fu", student_id: 1)
skill = Skill.create(skill_name: "Sign Language", student_id: 2)
skill = Skill.create(skill_name: "Ruby", student_id: 3)
skill = Skill.create(skill_name: "Ruby", student_id: 1)
skill = Skill.create(skill_name: "Ruby", student_id: 2)
