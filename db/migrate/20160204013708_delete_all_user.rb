class DeleteAllUser < ActiveRecord::Migration
  def up
    User.destroy_all
  end

  def down
  end
end
