class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :institution
      t.string :email
      t.string :contacto

      t.timestamps
    end
  end
end
