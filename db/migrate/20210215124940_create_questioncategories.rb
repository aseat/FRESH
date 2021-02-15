class CreateQuestioncategories < ActiveRecord::Migration[6.1]
  def change
    create_table :questioncategories do |t|

      t.timestamps
    end
  end
end
