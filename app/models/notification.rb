class Notification < ActiveRecord::Base
  belongs_to :project
  has_many :contact_notifications
  has_many :contacts, :through => :contact_notifications

  accepts_nested_attributes_for :contact_notifications, reject_if: :all_blank, allow_destroy: true

  TYPES = ["Commit", "Gem updated"]
end