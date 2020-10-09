class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :author
      t.integer :width
      t.integer :height
      t.string :url
      t.string :download_url
    end
  end
end
