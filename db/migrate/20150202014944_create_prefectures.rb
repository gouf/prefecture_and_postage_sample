class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|
      t.string :name
      t.decimal :postage

      t.timestamps null: false
    end
  end
end
