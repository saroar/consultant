class Consultant < ActiveRecord::Base
  belongs_to :user
  has_many :clients
end
