class CreateAgendaBancas < ActiveRecord::Migration[5.0]
  def change
    create_table :agenda_bancas do |t|
      t.date :data
      t.time :hora

      t.timestamps
    end
  end
end
