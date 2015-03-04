class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :who
      t.string :what
      t.datetime :when
      t.string :why
      t.string :where

      t.timestamps null: false
    end
  end
end
