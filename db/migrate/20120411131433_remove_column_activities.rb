class RemoveColumnActivities < ActiveRecord::Migration
  def up
  	remove_column :activities, :date
  	remove_column :activities, :time
  	add_column	  :activities, :date_time, :datetime
  end
end
