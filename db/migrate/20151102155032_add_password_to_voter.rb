class AddPasswordToVoter < ActiveRecord::Migration
  def change
    add_column :voters, :password_digest, :string
  end
end
