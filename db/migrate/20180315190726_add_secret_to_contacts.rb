class AddSecretToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :secret, :string
  end
end
