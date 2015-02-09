class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
      t.string :name
      t.string :country

      t.timestamps null: false
    end
  end
end
