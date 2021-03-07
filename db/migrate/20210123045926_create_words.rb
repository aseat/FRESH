class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :word, null:false
      t.string :yomi, null:false
      t.text :mean, null: false
      t.references :user, null:false, foreign_key: true
      
      t.timestamps
    end
  end
end
