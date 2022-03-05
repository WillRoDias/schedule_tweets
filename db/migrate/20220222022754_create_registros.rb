class CreateRegistros < ActiveRecord::Migration[7.0]
  def change
    create_table :registros do |t|
      t.string :compra

      t.timestamps
    end
  end
end
