class Contact < ActiveRecord::Base
  has_many :contact_notifications
  has_many :notifications, :through => :contact_notifications
end
