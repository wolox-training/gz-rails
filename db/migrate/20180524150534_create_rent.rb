class CreateRent < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.date :from
      t.date :to
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
    end
  end
end
