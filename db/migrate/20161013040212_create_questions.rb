class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.references :form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
