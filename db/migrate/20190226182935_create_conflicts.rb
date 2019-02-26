class CreateConflicts < ActiveRecord::Migration[5.2]
  def change
    create_table :conflicts do |t|
      t.string :name
      t.string :status
      t.references :user, foreign_key: true
      t.references :mediator, foreign_key: true, default: 5
      t.timestamps
    end
  end
end
