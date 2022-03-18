class CreateKillswitch < ActiveRecord::Migration[7.0]
  def change
    create_table :killswitches do |t|
      t.integer :bad_builds, array: true, default: []
      t.integer :minimum_build
      t.timestamps
    end
  end
end
