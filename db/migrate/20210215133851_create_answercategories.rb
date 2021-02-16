class CreateAnswercategories < ActiveRecord::Migration[6.1]
  def change
    create_table :answercategories do |t|
      t.integer :category_id,null: false
      
      t.references :answer, foreign_key: true,null: false
      t.timestamps
    end
  end
end
