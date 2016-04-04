class AddTimestampsToSnacks < ActiveRecord::Migration
  def change
    add_column :snacks, :created_at, :datetime, null: false
    add_column :snacks, :updated_at, :datetime, null: false
  end
end
