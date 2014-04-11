namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(name:     "Matheus Gaya Scandiffio",
                       email:    "matheusgs05@hotmail.com.br",
                       password: "123456",
                       password_confirmation: "123456",
                       idgrupo: 1
                       admin: true)
end
