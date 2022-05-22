class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :title
      t.string :body
      t.boolean :active
    end
  end
end
