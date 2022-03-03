class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.timestamps
      t.integer :iard
      t.integer :iher
      t.integer :lcln
      t.integer :fsp
    end
  end
end
