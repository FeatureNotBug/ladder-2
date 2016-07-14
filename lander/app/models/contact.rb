class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :website, presence: true
end
