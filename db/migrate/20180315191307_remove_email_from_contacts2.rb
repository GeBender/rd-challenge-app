class RemoveEmailFromContacts2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :email, :string
  end
end
