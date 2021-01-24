class CreateWays < ActiveRecord::Migration[6.1]
  def change
    create_table :ways do |t|

      t.timestamps
    end
  end
end
