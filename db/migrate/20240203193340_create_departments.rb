class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :dname, required: true
      t.string :loc, required: true

      t.timestamps
    end
  end
end
