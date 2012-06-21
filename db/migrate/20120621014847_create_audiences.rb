class CreateAudiences < ActiveRecord::Migration
  def change
    create_table :audiences do |t|
      t.string :label
    end
  end
end
