class CreateTShirts < ActiveRecord::Migration
  def change
    create_table :t_shirts do |t|
      t.string :title
      t.integer :tshirt_id
      t.text :description

      t.timestamps
    end
  end
end
