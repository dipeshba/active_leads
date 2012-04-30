class AddUnsubscribeAndEmailedOnColumnsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :unsubscribe, :boolean, :default => false
    add_column :leads, :emailed_on, :datetime
  end
end
