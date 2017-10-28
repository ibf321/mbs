class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :fantasy
      t.string :activity
      t.string :category
      t.string :cnpj
      t.integer :cooperation
      t.string :mcooperation
      t.string :email
      t.date :rdata
      t.integer :f0004
      t.integer :f0509
      t.integer :f1011
      t.integer :f1217
      t.integer :f1819
      t.integer :f2059
      t.integer :f6000
      t.integer :friday
      t.integer :genre
      t.integer :large_meals
      t.integer :small_meals
      t.integer :monday
      t.integer :motive
      t.integer :public
      t.integer :reason
      t.integer :atatus
      t.integer :sunday
      t.integer :thursday
      t.integer :tuesday
      t.integer :wednerday
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
