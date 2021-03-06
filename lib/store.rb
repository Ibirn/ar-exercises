class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {
    only_integer: true, 
    greater_than_or_equal_to: 0
    }
  validate :must_carry_clothes
  def must_carry_clothes
    if mens_apparel == false && womens_apparel == false
        errors.add(:apparel, "Must carry either mens or womens apparel")
    end
  end
end
