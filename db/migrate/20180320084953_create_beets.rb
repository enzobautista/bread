class CreateBeets < ActiveRecord::Migration[5.1]
  def change
    create_table :beets do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
