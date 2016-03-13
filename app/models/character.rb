class Character < ActiveRecord::Base
  validates :hero_name, presence: true
  validates :hero_name, uniqueness: { case_sensitive: false }
end
