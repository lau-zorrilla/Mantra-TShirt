class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
       add_attachment :shirts, :image
  end
end
