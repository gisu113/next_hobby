class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :hobby,             null: false, default: ""
      t.integer :required_time,     null: false, default: ""
      t.integer :budget,            null: false, default: ""
      t.integer :number_of_people,  null: false, default: ""
      t.timestamps
    end
  end
end
