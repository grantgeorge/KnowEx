class CreateGroupJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :groups do |t|
      # t.index [:user_id, :group_id]
      t.index [:group_id, :user_id], unique: true
    end
  end
end
