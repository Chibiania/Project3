class AddLikesToSnacks < ActiveRecord::Migration
  def change
    add_column :snacks, :likes, :integer
  end
end
