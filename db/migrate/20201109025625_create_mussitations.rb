class CreateMussitations < ActiveRecord::Migration[5.2]
  def change
    create_table :mussitations do |t|
      t.text :content
    end
  end
end
