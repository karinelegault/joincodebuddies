# require 'faker'
require "open-uri"

puts " Now deleting all Requests..."
puts " Now deleting all Projects..."
puts " Now deleting all Users..."
Request.delete_all
Project.delete_all
User.delete_all
Request.reset_pk_sequence
Project.reset_pk_sequence
User.reset_pk_sequence

puts "Creating Gad, Karine and Pascal"

# filegad = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339200/jeff-tumale-5sYQ1uD4pHU-unsplash_sl7jog.jpg')
gad = User.create!(email: "gad@email.com", password: "123456")
# gad.avatar.attach(io: filegad, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Gad created!"

# filekarine = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339310/sarah-rodriguez-k4TE7Z-nK8M-unsplash_drs8cw.jpg')
karine = User.create!(email: "karine@email.com", password: "123456")
# karine.avatar.attach(io: filekarine, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Karine created!"

# filepascal = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615339186/elizeu-dias-2EGNqazbAMk-unsplash_h5tkk1.jpg')
pascal = User.create!(email: "pascal@email.com", password: "123456")
# pascal.avatar.attach(io: filepascal, filename: 'nes.jpg', content_type: 'image/jpg')
puts "... Pascal created!"

puts "Creating Projects"

# file1 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615303525/call-me-fred-6KZcjJoaqNI-unsplash_d7ewhm.jpg')
project1 = Project.create!(user_id: "#{rand(1..3)}", name: "Miss Sunshine", description: "Bacon ipsum dolor amet biltong pork chop bresaola sausage ball tip alcatra bacon spare ribs strip steak. Hamburger boudin capicola, shoulder bresaola flank pastrami.", chatroom_link: "www.google.com", teammates: [2,3] )
# project1.photo.attach(io: file1, filename: 'nes.jpg', content_type: 'image/jpg')

# file2 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615305428/ji9smwacxk4bs8jdh48s3do06a40.jpg')
project2 = Project.create!(user_id: "#{rand(1..3)}", name: "Pups", description: "Pork belly buffalo chislic, boudin brisket meatloaf shank turkey pork capicola landjaeger biltong andouille tri-tip. Swine t-bone sirloin meatloaf kevin venison. Salami drumstick burgdoggen turducken bresaola boudin, turkey biltong jowl swine.", chatroom_link: "www.google.com", teammates: [2,3] )
# project2.photo.attach(io: file13, filename: 'nes.jpg', content_type: 'image/jpg')

# file3 = URI.open('https://res.cloudinary.com/drlbljn6y/image/upload/v1615649521/Screen_Shot_2021-03-13_at_10.31.30_AM_gwcnay.png')
project3 = Project.create!(user_id: "#{rand(1..3)}", name: "Build IT", description: "Chislic jowl cow bresaola, pork burgdoggen sausage pastrami short ribs turducken ball tip shank. Salami turkey flank landjaeger filet mignon bacon ball tip chicken.", chatroom_link: "www.google.com", teammates: [1,2] )
# project3.photo.attach(io: file2, filename: 'nes.jpg', content_type: 'image/png')

puts "Projects Created"
