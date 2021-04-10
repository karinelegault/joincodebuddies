# require 'faker'
require "open-uri"
puts " Now deleting all Chatroom..."
puts " Now deleting all Requests..."
puts " Now deleting all Projects..."
puts " Now deleting all Users..."
Chatroom.delete_all
Request.delete_all
Project.delete_all
User.delete_all
Chatroom.reset_pk_sequence
Request.reset_pk_sequence
Project.reset_pk_sequence
User.reset_pk_sequence

puts "Creating Gad, Karine and Pascal"

filegad = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339200/jeff-tumale-5sYQ1uD4pHU-unsplash_sl7jog.jpg')
gad = User.create!(name: "gad", email: "gad@email.com", password: "123456", city: "Montreal", job_title: "Fullstack Developper")
gad.avatar_photo.attach(io: filegad, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Gad created!"

filekarine = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339310/sarah-rodriguez-k4TE7Z-nK8M-unsplash_drs8cw.jpg')
karine = User.create!(name: "karine", email: "karine@email.com", password: "123456", city: "Toronto", job_title: "Frontend Developper")
karine.avatar_photo.attach(io: filekarine, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Karine created!"

filepascal = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339186/elizeu-dias-2EGNqazbAMk-unsplash_h5tkk1.jpg')
pascal = User.create!(name: "pascal", email: "pascal@email.com", password: "123456", city: "Ottawa", job_title: "Backend Developper")
pascal.avatar_photo.attach(io: filepascal, filename: 'nes.jpg', content_type: 'image/jpg')

puts "... Pascal created!"
puts "Creating Projects"
puts "Creating skills for each users"

skills_name = ['Ruby', 'Javascript', 'Python', 'React']

skills_name.each do |name|
  Skill.create(
    name: name
  )
  puts "created #{name}"
end

"puts skill has been created"
"Creating projects"

users = User.all
users.each do |user|
  UserSkill.create!(
    skill: Skill.all.sample,
    user: user
  )
end

file1 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617665374/firmbee-com-gcsNOsPEXfs-unsplash_jpetwl.jpg')
project1 = Project.create!(user_id: "#{rand(1..3)}", name: "Notes inc", description: "I would like to create a software to take notes during meeting. The idea would be the have visual elements to make it visible at all time.", chatroom_link: "www.google.com", teammates: [2,3], status: "finished" )
project1.photo.attach(io: file1, filename: 'nes.jpg', content_type: 'image/jpg')
chatroom = Chatroom.create!(user_id: 1, project_id: 1, name: "mychatroom")

file2 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617665518/sigmund-4UGmm3WRUoQ-unsplash_yxbehu.jpg')
project2 = Project.create!(user_id: "#{rand(1..3)}", name: "Formation hub for designers", description: "The idea would be to create a hub in order to display formation available for designer towards different rooms.", chatroom_link: "www.google.com", teammates: [2,3], status: "finished" )
project2.photo.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
chatroom = Chatroom.create!(user_id: 2, project_id: 2, name: "mychatroom")

file3 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617665838/taras-shypka-iFSvn82XfGo-unsplash_n86qyz.jpg')
project3 = Project.create!(user_id: "#{rand(1..3)}", name: "Devices tester", description: "I would like to create an amazing software to help QA experts testing products on as many devices at the same time.", chatroom_link: "www.google.com", teammates: [1,2], status: "idea" )
project3.photo.attach(io: file3, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 3, project_id: 3, name: "mychatroom")

file4 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617667820/leohoho-2iisCGzu_mw-unsplash_v0iw7f.jpg')
project4 = Project.create!(user_id: "#{rand(1..3)}", name: "Masks finder", description: "Create a software to help health workers find masks supplies easier.", chatroom_link: "www.google.com", teammates: [1,2], status: "idea" )
project4.photo.attach(io: file4, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 3, project_id: 3, name: "mychatroom")

file5 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617751179/igor-miske-JVSgcV8_vb4-unsplash_tavhlj.jpg')
project5 = Project.create!(user_id: "#{rand(1..3)}", name: "Salad Masta", description: "I would like to work on a web site that allows the user to shuffle through ingredients to create the best salad.", chatroom_link: "www.google.com", teammates: [2,3], status: "idea" )
project5.photo.attach(io: file5, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 2, project_id: 3, name: "mychatroom")

file6 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617751192/pankaj-patel-Ylk5n_nd9dA-unsplash_hwjwsg.jpg')
project6 = Project.create!(user_id: "#{rand(1..3)}", name: "Blocks build Website", description: "Simple website for my friend who build things with blocks.", chatroom_link: "www.google.com", teammates: [2,3], status: "idea" )
project6.photo.attach(io: file6, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 2, project_id: 3, name: "mychatroom")

puts "Projects Created"
