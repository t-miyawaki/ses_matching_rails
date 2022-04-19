class CreateEmployeeNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_numbers do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    
    end
  end
end

# 確認取れ次第このファイル消します

