class AddUserIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :user, foregin_key: true
  end
end
