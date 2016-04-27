class ChangeColumnType < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.remove :description
    end
  end
end
