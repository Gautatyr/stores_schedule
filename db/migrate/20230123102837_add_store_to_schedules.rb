class AddStoreToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_reference :schedules, :shop, null: false, foreign_key: true
  end
end
