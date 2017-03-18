class AddDateTimesToKites < ActiveRecord::Migration
  def change
    add_column :kites, :started_at, :datetime
    add_column :kites, :end_at, :datetime
  end
end
