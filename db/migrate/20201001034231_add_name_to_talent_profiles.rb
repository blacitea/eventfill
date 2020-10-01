# frozen_string_literal: true

# Realised Talent Profiles had no names
class AddNameToTalentProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :talent_profiles, :name, :string
  end
end
