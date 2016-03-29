class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :description
      t.string :job_title

      t.timestamps null: false
    end
  end
end
