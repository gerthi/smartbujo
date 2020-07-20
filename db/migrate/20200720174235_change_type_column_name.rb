class ChangeTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :routines, :type, :freq_type
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
