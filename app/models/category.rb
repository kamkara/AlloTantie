class Category < ApplicationRecord
  belongs_to :user

  ###########  Slug ############
  ################## VALIDATES  ###############
  validates :title, :user_id, presence: true
  validates :title, length: { minimum:5 }

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end 
end
