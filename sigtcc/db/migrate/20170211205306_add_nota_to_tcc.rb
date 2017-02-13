class AddNotaToTcc < ActiveRecord::Migration[5.0]
  def change
    add_column :tccs, :nota, :double
    add_column :tccs, :status, :string
  end
end
