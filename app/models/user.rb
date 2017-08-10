class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   
   validates :first_name, presence: true 
   validates :last_name, presence: true


   has_many :articles
   has_many :comments,  dependent: :destroy
   acts_as_voter
end
