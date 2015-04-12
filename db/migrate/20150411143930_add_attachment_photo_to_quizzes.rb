class AddAttachmentPhotoToQuizzes < ActiveRecord::Migration
  def self.up
    change_table :quizzes do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :quizzes, :photo
  end
end
