class StaticPagesController < ApplicationController
  def index
    @articles = Article.all
  end

  def about
  end

  def contact
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
