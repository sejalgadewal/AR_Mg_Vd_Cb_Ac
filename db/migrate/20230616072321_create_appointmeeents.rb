class CreateAppointmeeents < ActiveRecord::Migration[7.0]
  def change
    create_table :appointmeeents do |t|
      t.datetime :app_date
      t.references :physician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
