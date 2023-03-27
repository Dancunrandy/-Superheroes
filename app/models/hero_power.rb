class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power
  
  validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'] }
  validates :hero_id, inclusion: { in: Hero.pluck(:id), message: "validation errors" }
  validates :power_id, inclusion: { in: Power.pluck(:id), message: "is not a valid power" }
end
