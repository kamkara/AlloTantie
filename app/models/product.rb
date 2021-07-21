class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user



  ################## VALIDATES  ###############
  validates :title,
            :content, 
            :price,
            :img_product,
            :country_id,
            #:img_country,
            :avatar,
            :author,
            :category_id,
            :slug,
            :user_id, presence: true

  validates :title, length: { minimum:5 }
  validates :content, length: { minimum:50 }
  



  ################## CONSTANTES ###############

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end 
end
