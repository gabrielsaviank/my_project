class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cpd
      t.string :phone
      t.string :email
      t.string :zip
      t.string :city
      t.string :state
      t.string :borough
      t.string :street
      t.string :number
      t.string :comp
      t.string :tipo

      t.timestamps
    end
  end
end
