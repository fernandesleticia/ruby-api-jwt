class CreateCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :currencies do |t|
      t.string :symbol
      t.string :name

      t.timestamps
    end
  end
end
