# require 'faker'
require "open-uri"
puts "Now deleting all Skills..."
UserSkill.delete_all
Skill.delete_all
puts "Now deleting all Chatroom..."
Chatroom.delete_all
puts "Now deleting all Requests..."
Request.delete_all
puts "Now deleting all Projects..."
Project.delete_all
puts "Now deleting all Users..."
User.delete_all
# Delete PK sequence
Chatroom.reset_pk_sequence
Request.reset_pk_sequence
Project.reset_pk_sequence
User.reset_pk_sequence
UserSkill.reset_pk_sequence
Skill.reset_pk_sequence

filegad = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618536426/Screen_Shot_2021-04-15_at_2.23.54_PM_ilaajd.png')
gad = User.create!(name: "gad", email: "gad@email.com", password: "123456", city: "Montreal", job_title: "Fullstack Developper")
gad.avatar_photo.attach(io: filegad, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Gad created!"
filekarine = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618536529/Image_d_iOS_oid1kt.jpg')
karine = User.create!(name: "karine", email: "karine@email.com", password: "123456", city: "Toronto", job_title: "Frontend Developper")
karine.avatar_photo.attach(io: filekarine, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Karine created!"
filepascal = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618537164/Prof_Pic_p9thyv.png')
pascal = User.create!(name: "pascal", email: "pascal@email.com", password: "123456", city: "Ottawa", job_title: "Backend Developper")
pascal.avatar_photo.attach(io: filepascal, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Pascal created!"
filemartin = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067063/alex-iby-XhMSz5I1kn8-unsplash_ur32mo.jpg')
martin = User.create!(name: "martin", email: "martin@email.com", password: "123456", city: "Quebec", job_title: "Fullstack Developper")
martin.avatar_photo.attach(io: filemartin, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Martin created!"
filemarie = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067065/ayo-ogunseinde-6W4F62sN_yI-unsplash_zsojnw.jpg')
marie = User.create!(name: "marie", email: "marie@email.com", password: "123456", city: "Longueuil", job_title: "Frontend Developper")
marie.avatar_photo.attach(io: filemarie, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Marie created!"
filejohn = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067131/mubariz-mehdizadeh-Py8F6-hRn5o-unsplash_ek1nf9.jpg')
john = User.create!(name: "john", email: "john@email.com", password: "123456", city: "Montreal", job_title: "Backend Developper")
john.avatar_photo.attach(io: filejohn, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... John created!"
filekim = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067106/matheus-ferrero-W7b3eDUb_2I-unsplash_fq6oi1.jpg')
kim = User.create!(name: "kim", email: "kim@email.com", password: "123456", city: "Quebec", job_title: "Backend Developper")
kim.avatar_photo.attach(io: filekim, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Kim created!"
filerose = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067772/tamara-bellis-JoKS3XweV50-unsplash_yp54jj.jpg')
rose = User.create!(name: "rose", email: "rose@email.com", password: "123456", city: "Sherbrooke", job_title: "Frontend Developper")
rose.avatar_photo.attach(io: filerose, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Rose created!"
filemax = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067878/christian-buehner-DItYlc26zVI-unsplash_mqwjgx.jpg')
max = User.create!(name: "max", email: "max@email.com", password: "123456", city: "Sherbrooke", job_title: "Backend Developper")
max.avatar_photo.attach(io: filemax, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Max created!"
filesteph = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067800/eye-for-ebony-vYpbBtkDhNE-unsplash_auscwj.jpg')
steph = User.create!(name: "steph", email: "steph@email.com", password: "123456", city: "Montreal", job_title: "Backend Developper")
steph.avatar_photo.attach(io: filesteph, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Steoh created!"
filesuzie = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067830/mathias-huysmans-U4JDjYmjn1g-unsplash_bg0xiu.jpg')
suzie = User.create!(name: "suzie", email: "suzie@email.com", password: "123456", city: "Gatineau", job_title: "Frontend Developper")
suzie.avatar_photo.attach(io: filesuzie, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Suzie created!"
filepeter = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1618067902/irene-strong-v2aKnjMbP_k-unsplash_kxizrx.jpg')
peter = User.create!(name: "peter", email: "peter@email.com", password: "123456", city: "Montreal", job_title: "Backend Developper")
peter.avatar_photo.attach(io: filepeter, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Peter created!"
puts "Creating skills for each users"
skills_name = [
  'Ruby',
  'Javascript',
  'Python',
  'React',
  'SQL',
  'PHP',
  'CSS',
  'HTML',
  'Git',
  'VueJS',
  'Java',
  'C++',
  'Unity',
  'Postgres',
  'MySQL',
  'Amazon AWS',
  'MongoDB',
  'Figma'
]
skills_name.each do |name|
  Skill.create(
    name: name
  )
  puts "created #{name}"
end
"puts skill has been created"
users = User.all
users.each do |user|
  skill1 = Skill.all.sample
  UserSkill.create!(skill: skill1, user: user)
  skill2 = Skill.all.sample
  UserSkill.create!(skill: skill2, user: user)
  skill3 = Skill.all.sample
  UserSkill.create!(skill: skill3, user: user)
  skill4 = Skill.all.sample
  UserSkill.create!(skill: skill4, user: user)
  skill5 = Skill.all.sample
  UserSkill.create!(skill: skill5, user: user)
  skill6 = Skill.all.sample
  UserSkill.create!(skill: skill6, user: user)
  skill7 = Skill.all.sample
  UserSkill.create!(skill: skill7, user: user)
end

puts "... Creating projects"
file1 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617665374/firmbee-com-gcsNOsPEXfs-unsplash_jpetwl.jpg')
project1 = Project.create!(user_id: 1, name: "Notes inc", description: "I would like to create a software to take notes during meeting. The idea would be the have visual elements to make it visible at all time.", chatroom_link: "www.google.com", teammates: [1,2], status: "finished" )
project1.photo.attach(io: file1, filename: 'nes.jpg', content_type: 'image/jpg')
chatroom = Chatroom.create!(user_id: 1, project_id: 1, name: "mychatroom")
file2 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617665518/sigmund-4UGmm3WRUoQ-unsplash_yxbehu.jpg')
project2 = Project.create!(user_id: 1, name: "Formation hub for designers", description: "The idea would be to create a hub in order to display formation available for designer towards different rooms.", chatroom_link: "www.google.com", teammates: [2,4], status: "finished" )
project2.photo.attach(io: file2, filename: 'nes.jpg', content_type: 'image/jpg')
chatroom = Chatroom.create!(user_id: 1, project_id: 2, name: "mychatroom")
file3 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617665838/taras-shypka-iFSvn82XfGo-unsplash_n86qyz.jpg')
project3 = Project.create!(user_id: 1, name: "Devices tester", description: "I would like to create an amazing software to help QA experts testing products on as many devices at the same time.", chatroom_link: "www.google.com", teammates: [1,2,6], status: "idea" )
project3.photo.attach(io: file3, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 1, project_id: 3, name: "mychatroom")


file4 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617667820/leohoho-2iisCGzu_mw-unsplash_v0iw7f.jpg')
project4 = Project.create!(user_id: 2, name: "Masks finder", description: "Create a software to help health workers find masks supplies easier.", chatroom_link: "www.google.com", teammates: [4,6], status: "idea" )
project4.photo.attach(io: file4, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 2, project_id: 4, name: "mychatroom")
file5 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617751179/igor-miske-JVSgcV8_vb4-unsplash_tavhlj.jpg')
project5 = Project.create!(user_id: 2, name: "Salad Masta", description: "I would like to work on a web site that allows the user to shuffle through ingredients to create the best salad.", chatroom_link: "www.google.com", teammates: [2,7], status: "idea" )
project5.photo.attach(io: file5, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 2, project_id: 5, name: "mychatroom")
file6 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1617751192/pankaj-patel-Ylk5n_nd9dA-unsplash_hwjwsg.jpg')
project6 = Project.create!(user_id: 3, name: "Blocks build Website", description: "Simple website for my friend who build things with blocks.", chatroom_link: "www.google.com", teammates: [1,8], status: "idea" )
project6.photo.attach(io: file6, filename: 'nes.jpg', content_type: 'image/png')
chatroom = Chatroom.create!(user_id: 3, project_id: 6, name: "mychatroom")
puts "Projects Created"
