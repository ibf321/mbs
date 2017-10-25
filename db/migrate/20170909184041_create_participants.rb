class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :institution
      t.string :phone
      t.string :email
      t.references :unit, index: true
      t.references :user, index: true
      


      t.timestamps
    end
  end
end
