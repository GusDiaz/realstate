class CreateRealStates < ActiveRecord::Migration[6.1]
  def change
    create_table :real_states do |t|
      t.string :name
      t.string :real_state_type
      t.string :street
      t.string :external_number
      t.string :internal_number
      t.string :neighborhood
      t.string :city
      t.string :country
      t.integer :rooms
      t.decimal :bathrooms
      t.string :comments

      t.timestamps
    end
  end
end
