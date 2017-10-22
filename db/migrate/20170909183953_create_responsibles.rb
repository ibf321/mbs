class CreateResponsibles < ActiveRecord::Migration[5.1]
  def change
    create_table :responsibles do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :function
      t.string :phone
      t.string :email
      t.references :doner, index: true
      t.references :institution, index: true
      t.timestamps
    end
  end
end
