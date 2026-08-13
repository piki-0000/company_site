class CreateContacts < ActiveRecord::Migration[8.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone
      t.string :company
      t.text :message, null: false
      t.string :status, null: false, default: "new_contact"

      t.timestamps
    end
  end
end
