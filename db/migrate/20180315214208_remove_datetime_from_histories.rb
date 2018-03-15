class RemoveDatetimeFromHistories < ActiveRecord::Migration[5.1]
  def change
    remove_column :histories, :datetime, :datetime
  end
end
