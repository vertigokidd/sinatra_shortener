class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :long_url
      t.string :key
      t.string :counter

      t.timestamps
    end
  end
end
