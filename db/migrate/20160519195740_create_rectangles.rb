class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|
      t.float :length
      t.float :width

      t.timestamps null: false
    end
  end
end
