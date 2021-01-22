class CreateConcretes < ActiveRecord::Migration[6.1]
  def change
    create_table :concretes do |t|

      t.timestamps
    end
  end
end
