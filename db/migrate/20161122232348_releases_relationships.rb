class ReleasesRelationships < ActiveRecord::Migration[5.0]
  def change
    change_table :tracks do |t|
      t.belongs_to :release
    end

    change_table :releases do |t|
      t.belongs_to :series, index: true
    end
  end
end
