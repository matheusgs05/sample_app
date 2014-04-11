namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  grupo = UserGroups.create!(nome: "Administrador",
                              descricao: "Administrar")
  admin = User.create!(name:     "Matheus Gaya Scandiffio",
                       email:    "matheusgs05@hotmail.com",
                       password: "123456",
                       password_confirmation: "123456",
                       idgrupo: 1,
                       admin: true)
  admin2 = User.create!(name:     "Tito Rezende",
                       email:    "titobrezende@hotmail.com.br",
                       password: "123456",
                       password_confirmation: "123456",
                       idgrupo: 1,
                       admin: true)
end
