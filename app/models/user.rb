class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :only_one_admin

  has_and_belongs_to_many :offers

  
  private

  def only_one_admin
    if User.count == 0
      self.isadmin = true
    end
  end
end
