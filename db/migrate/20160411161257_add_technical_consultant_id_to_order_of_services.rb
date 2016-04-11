class AddTechnicalConsultantIdToOrderOfServices < ActiveRecord::Migration
  def change
    add_column :order_of_services, :technical_consultant_id, :integer
  end
end
