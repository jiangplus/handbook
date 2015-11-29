class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string   "username",                                        default: "",       null: false
      t.string   "email",                                           default: "",       null: false
      t.string   "encrypted_password",                              default: "",       null: false
      t.string   "phone"
      t.string   "thumb"
      t.string   "gender"
      t.string   "location"
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "role",                                            default: "common", null: false
      t.string   "wx_token"
      t.string   "auth_token"
      t.string   "extra"
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
