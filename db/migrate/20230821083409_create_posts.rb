class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :hobby
      t.integer :required_time
      t.integer :budget
      t.integer :number_of_people
      t.timestamps
    end
  end
end
