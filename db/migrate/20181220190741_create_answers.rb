class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :band_id
      t.integer :question_id
      t.string :answer_response

      t.timestamps
    end
  end
end
