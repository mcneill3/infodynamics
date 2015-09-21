class Customer < ActiveRecord::Base
  has_many :calls
  has_many :emails
end
