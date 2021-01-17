class CreateKonves < ActiveRecord::Migration[6.1]
  def change
    create_table :konves do |t|
      t.string :name
      t.string :insta_uname
      t.string :snap_uname
      t.string :age
      t.string :quote

      t.timestamps
    end
  end
end
