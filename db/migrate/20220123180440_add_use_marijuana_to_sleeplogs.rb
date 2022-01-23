class AddUseMarijuanaToSleeplogs < ActiveRecord::Migration[6.0]
  def change
    add_column :sleeplogs, :useMarijuana, :boolean
  end
end
