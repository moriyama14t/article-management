class CreateUsersRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :users_roles do |t|
      add_column :users, :role, :integer, default: 1 # ENUM

      # 既に作成済みユーザーはadmin権限(0)を付与
      User.all.update_all(role: 0)
    end
  end
end
