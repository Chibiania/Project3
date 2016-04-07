class AddVideoColumnToSnacks < ActiveRecord::Migration
  def change
    add_column :snacks, :video_url, :string
  end
end
