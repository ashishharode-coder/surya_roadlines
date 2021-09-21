class VehicleOwner < ApplicationRecord
  has_one_attached :image

  validates :mobile_number, uniqueness: true, presence: true, length: { is: 10 }
  
  def name
    "#{first_name} #{last_name}"
  end
end