class AddAvatarColumnToContacts < ActiveRecord::Migration[5.0]
  def up
    add_attachment :contacts, :avatar
  end

  def down
    remove_attachment :contacts, :avatar
  end
end
