class CreateWays < ActiveRecord::Migration[6.1]
  def change
    create_table :ways do |t|
      t.string :name, null:false
      t.text :text, null: false
      t.string :youtube_url
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end
