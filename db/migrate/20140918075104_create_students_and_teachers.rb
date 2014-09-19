class CreateStudentsAndTeachers < ActiveRecord::Migration
  def change
  	create_table :students do |t|
  		t.string :name
  		t.timestamps
  	end	

  	create_table :teachers do |t|
  		t.string :name
  		t.timestamps
  	end	

    create_table :students_and_teachers, id: false do |t|
    	t.belongs_to :teacher
    	t.belongs_to :student
    end
  end
end
