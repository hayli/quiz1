class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|

      t.string      :name
      t.text        :ingredients
      t.text        :preparations
      t.string      :link
      t.timestamps

    end
  end
end
