class CreateAcquisitionDevelopmentMaintenances < ActiveRecord::Migration[6.1]
  def change
    create_table :acquisition_development_maintenances do |t|
      t.string :policy
      t.string :environment
      t.string :functionality
      t.string :acceptance
      t.references :company, null: false, foreign_key: true
      t.timestamps
    end
  end
end
