class ContactNotification < ActiveRecord::Base
  belongs_to :notification
  belongs_to :contact
end
