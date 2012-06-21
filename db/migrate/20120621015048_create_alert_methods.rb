class CreateAlertMethods < ActiveRecord::Migration
  def change
    create_table :alert_methods do |t|
      t.string :label
    end
  end
end
