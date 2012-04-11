class AddColumnProductQuantityActivities < ActiveRecord::Migration
  def up
  	add_column :activities, :productQuantity, :number
  end

end
