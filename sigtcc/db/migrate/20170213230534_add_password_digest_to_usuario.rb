class AddPasswordDigestToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :password_digest, :string
  end
end
