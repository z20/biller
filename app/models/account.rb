class Account < ActiveRecord::Base
  has_many :account_entries
  
  validates :name, presence: true,
                   length: {in: 1..70,
                           message: "Please use a normal name."},
                   uniqueness: true
                   
  validate :your_name_is_not_dumb
  
  def your_name_is_not_dumb
    if name.include?("dumb")
      errors.add(:name, "is dumb")
    end
  end
end
