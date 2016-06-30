class CreateAnalyses < ActiveRecord::Migration[5.0]
  def change
    create_table :analyses do |t|
      t.text :body
      t.float :anger
      t.float :disgust
      t.float :joy
      t.float :fear
      t.float :sadness

      t.timestamps
    end
  end
end
