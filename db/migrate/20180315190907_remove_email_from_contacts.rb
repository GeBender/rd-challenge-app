class RemoveEmailFromContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :contact, :email
  end
end
