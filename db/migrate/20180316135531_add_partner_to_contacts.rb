class AddPartnerToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :partner_id, :integer
  end
end
