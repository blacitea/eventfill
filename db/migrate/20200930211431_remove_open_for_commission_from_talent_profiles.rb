# frozen_string_literal: true

# Decided this option does not make sense without monetary features in app
class RemoveOpenForCommissionFromTalentProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :talent_profiles, :open_for_commission, :boolean
  end
end
