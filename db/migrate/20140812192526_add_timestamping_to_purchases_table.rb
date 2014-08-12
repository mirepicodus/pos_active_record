class AddTimestampingToPurchasesTable < ActiveRecord::Migration
  def change
    change_table :purchases do |t|
      t.remove :date

      t.timestamps
    end
  end
end
