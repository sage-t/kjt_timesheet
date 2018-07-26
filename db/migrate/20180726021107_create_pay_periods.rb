class CreatePayPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :pay_periods do |t|
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
