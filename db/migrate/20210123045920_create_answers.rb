class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.integer :category_id, null:false
      t.string :title, null:false
      t.text :question, null: false
      t.references :user, null:false, foreign_key: true
      t.references :answercategory null:false, foreign_key: true
      t.timestamps
    end
  end
end
