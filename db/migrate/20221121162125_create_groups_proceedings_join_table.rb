class CreateGroupsProceedingsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :proceedings
  end
end
