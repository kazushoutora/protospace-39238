class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      ## Database authenticatable
      t.string     :title,      null: false
      t.text       :catch_copy, null: false
      t.text       :concept,    null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
