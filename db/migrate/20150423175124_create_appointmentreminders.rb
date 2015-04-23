class CreateAppointmentreminders < ActiveRecord::Migration
  def change
    create_table :appointmentreminders do |t|

      t.timestamps null: false
    end
  end
end
