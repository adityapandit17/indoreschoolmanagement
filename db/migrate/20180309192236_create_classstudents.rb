class CreateClassstudents < ActiveRecord::Migration[5.1]
  def change
    create_table :classstudents do |t|
      t.string :name
      t.text :detail
      t.string :status

      t.timestamps
    end
  end
end
