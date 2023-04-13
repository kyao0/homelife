# == Schema Information
#
# Table name: seniors
#
#  id                          :integer          not null, primary key
#  BMI                         :string
#  _monthly_payment            :integer
#  address1                    :string
#  address2                    :string
#  affiliation                 :string
#  alma_mater                  :string
#  annual_income               :integer
#  birth_date                  :date
#  city                        :string
#  email                       :string
#  ethnicity                   :string
#  expected                    :string
#  expected_move_in_date       :date
#  first_name                  :string
#  gender                      :string
#  hobbies                     :string
#  insurance_group_number      :string
#  insurance_number            :string
#  insurance_provider          :string
#  is_high_blood_pressure      :boolean
#  is_high_glucose             :boolean
#  is_pet_owner                :boolean
#  is_smoker                   :boolean
#  known_chronic_disease       :string
#  last_name                   :string
#  last_profession             :string
#  marital_status              :string
#  mi                          :string
#  military_affiliation        :string
#  number_of_children          :integer
#  ok_with_firearms            :boolean
#  ok_with_pets                :boolean
#  ok_with_smoker              :boolean
#  pets                        :string
#  phone                       :integer
#  political                   :string
#  preferred_lease_length      :integer
#  preferred_space_type        :string
#  preferred_sponsor_age_range :string
#  preferred_sponsor_gender    :string
#  preferred_sponsor_sexuality :string
#  preferred_sponsor_type      :string
#  religion                    :string
#  sexuality                   :string
#  state                       :string
#  zip                         :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Senior < ApplicationRecord
end
