class SeasonsRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons_series do |t|
      t.belongs_to :season, index: true
      t.belongs_to :series, index: true
    end
  end
end
