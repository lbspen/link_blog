class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :URL
      t.date :date_found

      t.timestamps
    end
  end
end
