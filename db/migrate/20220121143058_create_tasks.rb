class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :body
      t.string :status
      t.date :date
      t.date :alert

      t.timestamps
    end
  end
end
