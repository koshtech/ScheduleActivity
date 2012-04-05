class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :product
      t.date :date
      t.time :time
      t.string :clientName
      t.string :clientAddress
      t.integer :clientTelephone
      t.string :clientEmail

      t.timestamps
    end
  end
end
