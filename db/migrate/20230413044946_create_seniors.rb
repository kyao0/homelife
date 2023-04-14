class CreateSeniors < ActiveRecord::Migration[6.0]
  def change
    create_table :seniors do |t|
      t.string :first_name
      t.string :last_name
      t.string :mi
      t.date :birth_date
      t.string :email
      t.integer :phone
      t.string :gender
      t.string :sexuality
      t.boolean :is_smoker
      t.boolean :is_pet_owner
      t.string :ethnicity
      t.string :marital_status
      t.integer :number_of_children
      t.string :last_profession
      t.string :pets
      t.string :insurance_provider
      t.string :insurance_group_number
      t.string :insurance_number
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :hobbies
      t.integer :annual_income
      t.string :religion
      t.string :political
      t.string :affiliation
      t.string :military_affiliation
      t.string :alma_mater
      t.boolean :is_high_blood_pressure
      t.boolean :is_high_glucose
      t.string :BMI
      t.string :known_chronic_disease
      t.string :expected
      t.integer :_monthly_payment
      t.string :preferred_space_type
      t.string :preferred_sponsor_type
      t.string :preferred_sponsor_age_range
      t.string :preferred_sponsor_gender
      t.string :preferred_sponsor_sexuality
      t.boolean :ok_with_smoker
      t.boolean :ok_with_firearms
      t.boolean :ok_with_pets
      t.date :expected_move_in_date
      t.integer :preferred_lease_length

      t.timestamps
    end
  end
end
