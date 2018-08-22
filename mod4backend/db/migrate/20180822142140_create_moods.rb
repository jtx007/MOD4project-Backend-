class CreateMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :moods do |t|
      t.string :face
      t.references :user, index: true
      t.timestamps
    end
  end
end
