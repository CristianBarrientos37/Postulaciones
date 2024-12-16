class CreateApplies < ActiveRecord::Migration[7.2]
  def change
    create_table :applies do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
