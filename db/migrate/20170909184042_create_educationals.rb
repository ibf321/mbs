class CreateEducationals < ActiveRecord::Migration[5.1]
  def change
    create_table :educationals do |t|
      t.string :subject_matter
      t.date :realisation_data
      t.string :facilitator
      t.string :technician
      t.references :unit, index: true
      t.references :participants, index: true

      t.timestamps
    end
  end
end
