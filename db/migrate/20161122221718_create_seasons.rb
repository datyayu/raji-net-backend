class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
