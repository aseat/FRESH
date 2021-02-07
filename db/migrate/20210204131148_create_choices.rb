class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.integer :choose_id,null: false
      t.references :question, foreign_key: true,null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
