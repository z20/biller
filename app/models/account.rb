class Account < ActiveRecord::Base
  has_many :account_entries
  
  validates :name, presence: true,
                   length: {in: 1..70,
                           message: "Please use a normal name."},
                   uniqueness: true
end
