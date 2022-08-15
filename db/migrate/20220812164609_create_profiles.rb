class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.text :comment
      t.belongs_to :user
      t.belongs_to :rank

      t.timestamps
    end
  end
end
