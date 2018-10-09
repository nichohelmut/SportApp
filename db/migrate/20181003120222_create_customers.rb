class CreateCustomers < ActiveRecord::Migration[5.2]

  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :picture
      t.text :description
      t.boolean :news_letter_except
      t.string :social_media

      t.timestamps
    end
  end

end
