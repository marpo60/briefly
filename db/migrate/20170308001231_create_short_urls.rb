class CreateShortUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :short_urls do |t|
      t.string :original_url, null: false
      t.string :key, null: false

      t.timestamps
    end

    add_index :short_urls, :key, :unique => true
  end
end
