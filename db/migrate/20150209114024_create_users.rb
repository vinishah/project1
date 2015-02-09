class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :role
      t.string :name
      t.string :email_address
      t.string :password
      t.string :courses_enrolled_in

      t.timestamps null: false
    end
  end
end
