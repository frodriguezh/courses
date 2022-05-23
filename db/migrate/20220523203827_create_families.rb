class CreateFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :families do |t|
      t.string :nombre
      t.string :app
      t.string :apm
      t.boolean :iquique
      t.boolean :santiago

      t.timestamps
    end
  end
end
