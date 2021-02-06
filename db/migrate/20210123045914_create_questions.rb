class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :problem, null: false
      t.integer :answerd_id, null: false
      t.text :commentary, null: false
      t.integer :category_id, null:false
      
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
