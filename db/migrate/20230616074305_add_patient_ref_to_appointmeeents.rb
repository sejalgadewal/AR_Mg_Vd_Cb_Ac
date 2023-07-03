class AddPatientRefToAppointmeeents < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointmeeents, :patient, null: false, foreign_key: true
  end
end
