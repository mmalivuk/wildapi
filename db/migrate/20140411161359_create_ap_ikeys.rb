class CreateApIkeys < ActiveRecord::Migration
  def change
    create_table :ap_ikeys do |t|
      t.string :key
      t.references :user, index: true

      t.timestamps
    end
  end
end
