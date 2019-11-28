class CreateTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :talks do |t|
      t.string :title
      t.string :description
      t.integer :votes

      t.timestamps
    end
  end
end
