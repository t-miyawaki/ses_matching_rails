class CreateSkillCategories < ActiveRecord::Migration[6.0]
  def change

    create_table :skill_categories do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :skills do |t|
      t.references :skill_category, null: false, foreign_key: true
      t.string :name, limit: 100, null: false
      

      t.timestamps
    end

    create_table :work_categories do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :work_locations do |t|
      t.string :name, limit: 50, null: false

      t.timestamps
    end
  
    create_table :project_features do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :showing_choices do |t|
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    create_table :commercial_distributions do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :contract_types do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :recruiting_limits do |t|
      t.string :name, limit: 50, null: false
      
      t.timestamps
    end

    create_table :interview_counts do |t|
      t.string :name, limit: 50, null: false

      t.timestamps
    end

    create_table :matching_statuses do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :experience_processes do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :qualifications do |t|
      t.references :skill_category, null: false, foreign_key: true
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :required_years do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :experience_years do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :nationalities do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :working_statuses do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :human_statuses do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :project_statuses do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :employee_numbers do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :permissions do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    create_table :roles do |t|
      # あとで使うカラム！！！
      # t.references :company, null: false, foreign_key: true
      t.string :name, limit: 100, null: false

      t.timestamps
    end

  end

end
