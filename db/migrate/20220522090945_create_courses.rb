class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :volume
      t.integer :price
      t.boolean :active

      t.timestamps
    end
  end
end
