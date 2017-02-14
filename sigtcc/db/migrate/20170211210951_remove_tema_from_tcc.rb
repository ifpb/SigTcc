class RemoveTemaFromTcc < ActiveRecord::Migration[5.0]
  def change
    remove_column :tccs, :tema, :string
  end
end
