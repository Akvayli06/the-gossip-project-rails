class CreateRecipientLists < ActiveRecord::Migration[7.0]
  def change
    create_table :recipient_lists do |t|
      t.belongs_to :private_message, index: true
      t.references :recipient, index: true
      
      t.timestamps
    end
  end
end
