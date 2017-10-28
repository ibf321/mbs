class CreateEducationals < ActiveRecord::Migration[5.1]
  def change
    create_table :educationals do |t|
      t.string :subject_matter
      t.string :facilitator
      t.date :rdata
      t.string :technical
      t.string :contry
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :street
      t.integer :number

      t.timestamps
    end
  end
end
