class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
