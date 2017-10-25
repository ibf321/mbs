class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :reason
      t.string :fantasy
      t.integer :kind
      t.string :cnpj_number
      t.string :cpf
      t.date :registration_data
      t.string :email
      t.text :obs
      t.string :phone
      t.integer :status
      t.integer :disclosure
      t.text :obs
      t.string :kind_donor
      t.string :donation
      t.string :site
      t.string :activity
      t.references :unit, index: true
      t.references :address, index: true
      t.references :responsible, index: true

      t.timestamps
    end
  end
end
