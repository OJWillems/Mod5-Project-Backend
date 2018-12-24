class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :band_id
      t.integer :listener_id
      t.string :question_response
      t.boolean :has_answered

      t.timestamps
    end
  end
end
