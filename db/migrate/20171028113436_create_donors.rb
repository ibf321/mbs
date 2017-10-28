class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :reason
      t.string :fantasy
      t.string :cnpj
      t.string :cpf
      t.string :disclosure
      t.string :activity
      t.string :donation
      t.string :email
      t.integer :kind
      t.string :phone
      t.date :r_data
      t.string :site
      t.integer :status
      t.string :contry
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :street
      t.integer :number
      t.string :name
      t.string :function
      t.string :rg
      t.string :cpf
      t.string :email
      t.string :contacto
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
