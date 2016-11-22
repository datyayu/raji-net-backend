class CreateReleases < ActiveRecord::Migration[5.0]
  def change
    create_table :releases do |t|
      t.string :name
      t.string :image
      t.integer :year
      t.integer :length
      t.integer :plays
      t.string :single_type

      t.timestamps
    end
  end
end
