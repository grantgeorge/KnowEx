class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
