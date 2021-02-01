class CreateWaycomments < ActiveRecord::Migration[6.1]
  def change
    create_table :waycomments do |t|
      t.references :way, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :text
      t.timestamps
    end
  end
end
