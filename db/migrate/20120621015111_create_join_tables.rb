class CreateJoinTables < ActiveRecord::Migration
  def up
    create_table :alert_methods_alerts do |t|
      t.integer :alert_id, null: false
      t.integer :alert_method_id, null: false
    end
    create_table :alerts_audiences do |t|
      t.integer :alert_id, null: false
      t.integer :audience_id, null: false
    end
    create_table :alerts_sendbacks do |t|
      t.integer :alert_id, null: false
      t.integer :sendback_id, null: false
    end
  end

  def down
  end
end
