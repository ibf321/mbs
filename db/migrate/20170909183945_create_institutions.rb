class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.references :unit, index: true
      t.integer :status
      t.integer :cooperation
      t.string :motive
      t.string :reason
      t.string :fantasy
      t.string :cnpj
      t.string :public
      t.string :activity
      t.string :genre
      t.string :email
      t.date :registration_date
      t.text :obs
      t.string :category
      t.integer :small_meals
      t.integer :large_meals
      t.integer :f0004
      t.integer :f0509
      t.integer :f1011
      t.integer :f1217
      t.integer :f1819
      t.integer :f2059
      t.integer :f6000
      t.integer :monday
      t.integer :tuesday
      t.integer :wednesday
      t.integer :thursday
      t.integer :friday
      t.integer :sunday
      t.integer :sunday

      t.timestamps
    end
  end
end
