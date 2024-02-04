class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :ename
      t.string :job
      t.references :mgr, null: true, foreign_key: {to_table: :employees}
      t.date :hireddate
      t.integer :sal
      t.integer :comm
      t.references :department, null: true, foreign_key: true

      t.timestamps
    end
  end
end
