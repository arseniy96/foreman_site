class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.string :username

      t.timestamps null: false
    end
  end
end
