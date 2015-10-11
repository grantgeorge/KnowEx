class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :introduction
      t.references :user

      t.timestamps null: false
    end
  end
end
