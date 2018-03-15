class RemoveSecretFromContacts < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :secret, :string
  end
end
