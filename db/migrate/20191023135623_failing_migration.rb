class FailingMigration < ActiveRecord::Migration[6.0]
  def change
    add_column :my_models, :hidden, :boolean

    MyModel.update_all(updated_at: Time.now) # MyModel uses: connects_to database: { writing: :primary, reading: :follower }
  end
end
