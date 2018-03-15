class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.datetime :datetime
      t.string :url
      t.integer :contact_id

      t.timestamps
    end
  end
end
