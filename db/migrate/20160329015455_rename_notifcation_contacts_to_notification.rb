class RenameNotifcationContactsToNotification < ActiveRecord::Migration
  def change
    rename_table :notification_contacts, :notifications
  end
end
