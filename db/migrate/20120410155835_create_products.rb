class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :flavor
      t.string :description

      t.timestamps
    end
  end
end
