class User < ActiveRecord::Base
  enum role: [:client, :consultant, :admin]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :client
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :clients
  has_many :consultants
end
