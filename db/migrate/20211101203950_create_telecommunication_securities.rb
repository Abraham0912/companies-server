class CreateTelecommunicationSecurities < ActiveRecord::Migration[6.1]
  def change
    create_table :telecommunication_securities do |t|
      t.string :network_controls
      t.string :security_mechanisms
      t.string :segregation_networks
      t.string :procedures
      t.string :exchange
      t.string :mesage_service
      t.string :confidentiality

      t.timestamps
    end
  end
end
