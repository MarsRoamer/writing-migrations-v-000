class CreateStudents < ActiveRecord::Migration[5.1]

  # sql = <<-SQL
  #   CREATE TABLE IF NOT EXISTS students (
  #     name TEXT
  #   )
  #   SQL
  # 
  #   ActiveRecord::Base.connection.execute(sql)
  sql = 'DROP TABLE IF NOT EXISTS students'
  ActiveRecord::Base.conection.execute(sql)

    def change
      create_table :students do |t|
        t.string :name
      end
    end


end
