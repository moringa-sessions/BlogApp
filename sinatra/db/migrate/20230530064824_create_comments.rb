class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment

      # t.boolean :hide, :default=>0
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps    
    end
  end
end
