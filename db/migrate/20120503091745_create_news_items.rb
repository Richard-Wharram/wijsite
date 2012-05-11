class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :content
      t.datetime :timestamp
      t.string :author

      t.timestamps
    end
  end
end
