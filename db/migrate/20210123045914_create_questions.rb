class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :problem, null: false
      t.integer :answerd_id, null: false
      t.text :commentary, null: false
      
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end

  def up
    Question.destroy_all
    add_reference :questions, :user, null: false, show: true
  end

  def down
    remove_reference :questions, :user, show: true
  end
end
