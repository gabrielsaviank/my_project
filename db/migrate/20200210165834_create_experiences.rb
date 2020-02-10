class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :ziptwo
      t.string :citytwo
      t.string :statetwo
      t.string :boroughtwo
      t.string :streetwo
      t.string :numbertwo
      t.string :comptwo
      t.string :tipotwo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
