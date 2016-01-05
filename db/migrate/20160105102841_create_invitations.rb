class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :email
      t.string :name
      t.string :to_email
      t.string :to_name
      t.boolean :clicked, default: false

      t.timestamps
    end
  end
end
