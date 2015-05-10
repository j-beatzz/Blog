class CreateArticels < ActiveRecord::Migration
  def change
    create_table :articels do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
