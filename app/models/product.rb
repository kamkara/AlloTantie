class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :img_product

has_rich_text :content

  ################## VALIDATES  ###############
  validates :title,
            :content, 
            :price,
            :img_product,
            :country_id,
            :img_country,
            #:avatar,
            :author,
            :category_id,
            :slug,
            :user_id, presence: true

  validates :title, length: { minimum:5 }
  validates :content, length: { minimum:50 }
  
#Avoid N+1 queries
  Product.all.with_rich_text_content # Preload the body without attachments.
  Product.all.with_rich_text_content_and_embeds # Preload both body and attachments.



  ################## CONSTANTES ###############

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end 
end
