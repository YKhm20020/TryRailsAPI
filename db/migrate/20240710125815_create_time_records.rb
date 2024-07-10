class CreateTimeRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :time_records do |t|
      t.datetime :current_time

      t.timestamps
    end
  end
end
