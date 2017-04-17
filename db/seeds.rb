User.create!(name:  "Hidde Nijland",
             email: "hidde.nijland@googlemail.com",
             password:              "Inspiron4711",
             password_confirmation: "Inspiron4711",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end