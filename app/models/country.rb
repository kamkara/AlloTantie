class Country < ApplicationRecord
  belongs_to :user
  has_one_attached :im__country
  
  validates :title, length: { minimum:5 }
  validates :title,
            :slug,
            :user_id, 
            :img_country, presence:true
  

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end 

end
