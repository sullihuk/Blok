class Posts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :commentator
      t.text :content
    end
  end
end
