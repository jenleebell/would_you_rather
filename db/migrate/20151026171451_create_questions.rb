class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :content, :string

      t.timestamps
    end
    create_table :answers do |t|
      t.column :content, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
