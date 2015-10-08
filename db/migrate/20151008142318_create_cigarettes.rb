class CreateCigarettes < ActiveRecord::Migration
  def change
    create_table :cigarettes do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
