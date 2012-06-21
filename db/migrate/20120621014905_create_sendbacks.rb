class CreateSendbacks < ActiveRecord::Migration
  def change
    create_table :sendbacks do |t|
      t.string :label

      t.timestamps
    end
  end
end
