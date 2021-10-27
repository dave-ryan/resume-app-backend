### Create all the students first
75.times do
  fake_student = Student.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", short_bio: Faker::Lorem.paragraph(sentence_count: 3), twitter_handle: Faker::Twitter.user[:name], phone_number: Faker::PhoneNumber.cell_phone, photo: "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/285/thinking-face_1f914.png")
  fake_student[:email] = Faker::Internet.unique.email(name: fake_student.first_name)
  fake_student[:linkedin_url] = "#{fake_student.first_name}.linkedin.com"
  fake_student[:personal_blog] = "#{fake_student.first_name}.blogspot.com"
  fake_student[:online_resume_url] = "#{fake_student.first_name}.resume.com"
  fake_student[:github_url] = "#{fake_student.first_name}.github.io"
  fake_student.save
end

### Everyone gets one Education
index = 1
while index < 76
  education = Education.create!(start_date: Faker::Date.between(from: "2000-01-01", to: "2005-12-31"), end_date: Faker::Date.between(from: "2006-01-01", to: "2010-12-31"), degree: Faker::Educator.degree, university_name: Faker::University.name, details: Faker::Lorem.paragraph(sentence_count: 3), student_id: index)
  index += 1
end
### Some people get more schooling
40.times do
  education = Education.create!(start_date: Faker::Date.between(from: "2002-01-01", to: "2007-12-31"), end_date: Faker::Date.between(from: "2008-01-01", to: "2012-12-31"), degree: Faker::Educator.degree, university_name: Faker::University.name, details: Faker::Lorem.paragraph(sentence_count: 3), student_id: rand(1..75))
end

# rails g model Skill skill_name:string
# rails g model Project name:string description:text url:string screenshot:string
# student = Student.create!(first_name: "Bob", last_name: "Johnson", email: "fake@test.com", password: "password", short_bio: "taslkdja", linkedin_url: "aslkdj", twitter_handle: "asldkjas", personal_blog: "alsdkj", phone_number: "123123", online_resume_url: "asldkjasldk", github_url: "asldkjasdklj", photo: "laksda")
# student = Student.create!(first_name: "Tim", last_name: "Benning", email: "test@test.com", password: "password", short_bio: "This is my bio.", linkedin_url: "tim_linkedIn.com", twitter_handle: "tim_twitter", personal_blog: "Tims_blog", phone_number: "555-234-2222", online_resume_url: "tim_resume.com", github_url: "tim_github_test", photo: "ugly_man")
# student = Student.create!(first_name: "Sally", last_name: "Jones", email: "sally@test.com", password: "password", short_bio: "This is the bio for Sally.", linkedin_url: "sally_linkedIn.com", twitter_handle: "sally_twitter", personal_blog: "sally_blog.com", phone_number: "555-777-1111", online_resume_url: "sally_resume.com", github_url: "sally_github_test", photo: "sally_girl")

# education = Education.create!(start_date: "2000-01-01", end_date: "2004-01-01", degree: "Psychology", university_name: "University of Texas", details: "none", student_id: 1)
# education = Education.create!(start_date: "2004-01-01", end_date: "2008-01-01", degree: "Biology", university_name: "University of Alabama", details: "none", student_id: 2)
# education = Education.create!(start_date: "2008-01-01", end_date: "2012-01-01", degree: "Software", university_name: "University of Chicago", details: "none", student_id: 3)
# 2.times.do
#   experience = Experience.create!(start_date: Faker::Date.between(from: '2000-09-23', to: '2020-09-25'), end_date: Faker::Date.between(from: '2000-09-23', to: '2020-09-25', job_title: Faker::Job.title, company_name: "University of Texas", details: "Good Teacher", student_id: 1)
# end
index = 1
while index > 76
  project = Project.create!(name: Faker::App.name, description: Faker::Hipster.sentences(number: 3), url: Faker::Internet.domain_name, screenshot: Faker::Placeholdit.image, student_id: rand(1..75))
  index += 1
end
###  some people get more projects
40.times.do
project = Project.create!(name: Faker::App.name, description: Faker::Hipster.sentences(number: 3), url: Faker::Internet.domain_name, screenshot: Faker::Placeholdit.image, student_id: rand(1..75))
end


index = 1
while index < 76
  skill = Skill.create!(skill_name: Faker::ProgrammingLanguage.name, student_id: rand(1..75))
  index += 1
end
### some people get more skills
40.times.do
skill = Skill.create!(skill_name: Faker::ProgrammingLanguage.name, student_id: rand(1..75))
end

# ### Everyone gets one work experience
# index = 1
# while index < 76
#   experience = Experience.create!(start_date: Faker::Date.between(from: "2002-01-01", to: "2007-12-31"), end_date: Faker::Date.between(from: "2008-01-01", to: "2012-12-31"), job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.paragraph(sentence_count: 3), student_id: index)
#   index += 1
# end
# ### Some people get more work experience
# 40.times do
#   experience = Experience.create!(start_date: Faker::Date.between(from: "2002-01-01", to: "2007-12-31"), end_date: Faker::Date.between(from: "2008-01-01", to: "2012-12-31"), job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.paragraph(sentence_count: 3), student_id: rand(1..75))
# end
### Everyone gets one work experience
index = 1
while index < 76
  experience = Experience.create!(start_date: Faker::Date.between(from: "2002-01-01", to: "2007-12-31"), end_date: Faker::Date.between(from: "2008-01-01", to: "2012-12-31"), job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.paragraph(sentence_count: 3), student_id: index)
  index += 1
end
### Some people get more work experience
40.times do
  experience = Experience.create!(start_date: Faker::Date.between(from: "2002-01-01", to: "2007-12-31"), end_date: Faker::Date.between(from: "2008-01-01", to: "2012-12-31"), job_title: Faker::Job.title, company_name: Faker::Company.name, details: Faker::Lorem.paragraph(sentence_count: 3), student_id: rand(1..75))
end
