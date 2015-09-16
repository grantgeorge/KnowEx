class Endorsement < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.text :text
      t.references :user, index: true, foreign_key: true
      t.references :endorseable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
