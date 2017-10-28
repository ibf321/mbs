class CreateEducationalsParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :educationals_participants do |t|
      t.references :participant, foreign_key: true
      t.references :educational, foreign_key: true

      t.timestamps
    end
  end
end
