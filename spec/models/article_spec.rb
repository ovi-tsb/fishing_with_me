require 'rails_helper'

  describe Comment do
      before do
        @article = Article.create!(title: "fishing rod", article_body: "about fishing rod", photo: "bluegill.jpg")
        @user = User.create!(first_name: "tom", last_name: "perry", email: "team@yahoo.com", password: "123456") 
        @article.comments.create!(user: @user, body: "Awful post!")
      end

        #it "is not valid without text" do 
          #expect(Comment.new(body:nil)).not_to be_valid
        #end


  end

  
   
#before do

  #@article = Article.create!(title: "fishing rod") 
  #@user = User.create!(first_name: "Tom", last_name: "Thomas", email: "tom@yahoo.com", password: "123456") 
  #@article.comments.create!(user: user, body: "Awful post!")

  


#end