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

index = 1
while index < 76
  project = Project.create!(name: Faker::App.name, description: Faker::Hipster.sentences(number: 3), url: Faker::Internet.domain_name, screenshot: Faker::Placeholdit.image, student_id: index)
  index += 1
end
###  some people get more projects
40.times do
  project = Project.create!(name: Faker::App.name, description: Faker::Hipster.sentences(number: 3), url: Faker::Internet.domain_name, screenshot: Faker::Placeholdit.image, student_id: rand(1..75))
end

index = 1
while index < 76
  skill = Skill.create!(skill_name: Faker::ProgrammingLanguage.name, student_id: index)
  index += 1
end
### some people get more skills
40.times do
  skill = Skill.create!(skill_name: Faker::ProgrammingLanguage.name, student_id: rand(1..75))
end

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
