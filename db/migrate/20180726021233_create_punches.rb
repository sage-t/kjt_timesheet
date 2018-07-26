class CreatePunches < ActiveRecord::Migration[5.2]
  def change
    create_table :punches do |t|
      t.datetime :time
      t.integer :user_id
      t.integer :pay_period_id

      t.timestamps
    end
  end
end
