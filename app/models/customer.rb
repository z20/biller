class Customer < Account
  has_many :time_entries
end

@customer.time_entries
@customer.account_entries
