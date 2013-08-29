
require 'faker'

User.create!(:username => "nprater",:first_name => "Nick",
	         :last_name => "Prater")
User.create!(:username => "melindap",:first_name => "Melinda",
	         :last_name => "Prater")
User.create!(:username => "bp",:first_name => "Bernadette",
	         :last_name => "Prater")

100.times do
  Post.create!(:user_id => rand(3)+1,
  	           :title => Faker::Lorem.words(3).join(" "),
  	           :body => Faker::Lorem.sentences(3).join(" ")
  	           )
end	

50.times do
  Tag.create!(:description => Faker::Lorem.words((rand(0..5))+1).join(" "))
end

50.times do
  Posttag.create!(:post_id => rand(100)+1,
                  :tag_id => rand(50)+1
  	             )
end