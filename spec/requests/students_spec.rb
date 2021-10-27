require "rails_helper"

RSpec.describe "Students", type: :request do
  describe "GET /students" do
    it "Gets index for all stduents" do
      get "/students"
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /students/:id" do
    it "Gets student info for specific info" do
      get "/students/1"
      expect(response).to have_http_status(200)
    end
  end

  describe "CREATE /students" do
    it "Creates a new student" do
      post "/students", params: {
                          first_name: "Percy",
                          last_name: "Jonasson",
                          email: "test@test.com",
                          password: "password",
                          short_bio: "Short Bio Test",
                          linkedin_url: "test",
                          twitter_handle: "test",
                          personal_blog: "test",
                          online_resume_url: "test",
                          github_url: "test",
                          photo: "test",
                          phone_number: 254 - 368 - 8525,
                        }
      expect(response).to have_http_status(200)
    end
  end

  describe "PATCH /students" do
    it "Updates a student's info" do
      student = Student.create(
        first_name: "test",
        last_name: "test",
        email: "test@test.com",
        password: "password",
        short_bio: "test",
        linkedin_url: "test",
        twitter_handle: "test",
        personal_blog: "test",
        online_resume_url: "test",
        github_url: "test",
        photo: "test",
        phone_number: 1,
      )
      jwt = JWT.encode(
        {
          student_id: student.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      patch "/students/#{student["id"]}", params: {
                                            first_name: "Percy",
                                            last_name: "Jonasson",
                                            email: "test@test.com",
                                            password: "password",
                                            short_bio: "Short Bio Test",
                                            linkedin_url: "test",
                                            twitter_handle: "test",
                                            personal_blog: "test",
                                            online_resume_url: "test",
                                            github_url: "test",
                                            photo: "test",
                                            phone_number: 254 - 368 - 8525,
                                          },
                                          headers: { "Authorization" => "Bearer #{jwt}" }
      student = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(student["first_name"]).to eq ("Percy")
    end
  end

  describe "DELETE /students" do
    it "Delete a student's info" do
      student = Student.create(
        first_name: "test",
        last_name: "test",
        email: "test@test.com",
        password: "password",
        short_bio: "test",
        linkedin_url: "test",
        twitter_handle: "test",
        personal_blog: "test",
        online_resume_url: "test",
        github_url: "test",
        photo: "test",
        phone_number: 1,
      )
      jwt = JWT.encode(
        {
          student_id: student.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      delete "/students/#{student["id"]}",
             headers: { "Authorization" => "Bearer #{jwt}" }
      expect(response).to have_http_status(200)
    end
  end
end
