class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :city
      t.integer :price
      t.string :duration
      t.string :max_capacity

      t.timestamps null: false
    end
  end
end
