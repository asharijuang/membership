class CreateAnouncements < ActiveRecord::Migration
  def change
    create_table :anouncements do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
