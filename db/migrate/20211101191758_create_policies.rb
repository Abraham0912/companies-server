class CreatePolicies < ActiveRecord::Migration[6.1]
  def change
    create_table :policies do |t|
      t.string :policy_set
      t.string :policy_review
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
