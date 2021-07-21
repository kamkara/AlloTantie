class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #RELATIONS
  has_many :categories, dependent: :destroy
  has_many :products, dependent: :destroy

#has_many :products, class_name: "product", foreign_key: "reference_id", dependent: :destroy
#has_many :categories, class_name: "categorie", foreign_key: "reference_id", dependent: :destroy



  ################## VALIDATES  ###############
  validates :username, :email, :contact, :role, :location,  presence: true
  validates :username, length: { minimum:5 }

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :username, use: :slugged

  def should_generate_new_friendly_id?
    username_changed?
  end

end
