class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :long_url
      t.string :key
      t.integer :counter, :default => 0

      t.timestamps
    end
  end
end
