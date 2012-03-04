class CreateNewsletterConfigurations < ActiveRecord::Migration
  def change
    create_table :newsletter_configurations do |t|

      t.timestamps
    end
  end
end
