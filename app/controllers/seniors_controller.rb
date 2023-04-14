class SeniorsController < ApplicationController
  def index
    matching_seniors = Senior.all

    @list_of_seniors = matching_seniors.order({ :created_at => :desc })

    render({ :template => "seniors/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_seniors = Senior.where({ :id => the_id })

    @the_senior = matching_seniors.at(0)

    render({ :template => "seniors/show.html.erb" })
  end

  def create
    the_senior = Senior.new
    the_senior.first_name = params.fetch("query_first_name")
    the_senior.last_name = params.fetch("query_last_name")
    the_senior.mi = params.fetch("query_mi")
    the_senior.birth_date = params.fetch("query_birth_date")
    the_senior.email = params.fetch("query_email")
    the_senior.phone = params.fetch("query_phone")
    the_senior.gender = params.fetch("query_gender")
    the_senior.sexuality = params.fetch("query_sexuality")
    the_senior.is_smoker = params.fetch("query_is_smoker", false)
    the_senior.is_pet_owner = params.fetch("query_is_pet_owner", false)
    the_senior.ethnicity = params.fetch("query_ethnicity")
    the_senior.marital_status = params.fetch("query_marital_status")
    the_senior.number_of_children = params.fetch("query_number_of_children")
    the_senior.last_profession = params.fetch("query_last_profession")
    the_senior.pets = params.fetch("query_pets")
    the_senior.insurance_provider = params.fetch("query_insurance_provider")
    the_senior.insurance_group_number = params.fetch("query_insurance_group_number")
    the_senior.insurance_number = params.fetch("query_insurance_number")
    the_senior.address1 = params.fetch("query_address1")
    the_senior.address2 = params.fetch("query_address2")
    the_senior.city = params.fetch("query_city")
    the_senior.state = params.fetch("query_state")
    the_senior.zip = params.fetch("query_zip")
    the_senior.hobbies = params.fetch("query_hobbies")
    the_senior.annual_income = params.fetch("query_annual_income")
    the_senior.religion = params.fetch("query_religion")
    the_senior.political = params.fetch("query_political")
    the_senior.affiliation = params.fetch("query_affiliation")
    the_senior.military_affiliation = params.fetch("query_military_affiliation")
    the_senior.alma_mater = params.fetch("query_alma_mater")
    the_senior.is_high_blood_pressure = params.fetch("query_is_high_blood_pressure", false)
    the_senior.is_high_glucose = params.fetch("query_is_high_glucose", false)
    the_senior.BMI = params.fetch("query_BMI")
    the_senior.known_chronic_disease = params.fetch("query_known_chronic_disease")
    the_senior.expected = params.fetch("query_expected")
    the_senior._monthly_payment = params.fetch("query__monthly_payment")
    the_senior.preferred_space_type = params.fetch("query_preferred_space_type")
    the_senior.preferred_sponsor_type = params.fetch("query_preferred_sponsor_type")
    the_senior.preferred_sponsor_age_range = params.fetch("query_preferred_sponsor_age_range")
    the_senior.preferred_sponsor_gender = params.fetch("query_preferred_sponsor_gender")
    the_senior.preferred_sponsor_sexuality = params.fetch("query_preferred_sponsor_sexuality")
    the_senior.ok_with_smoker = params.fetch("query_ok_with_smoker", false)
    the_senior.ok_with_firearms = params.fetch("query_ok_with_firearms", false)
    the_senior.ok_with_pets = params.fetch("query_ok_with_pets", false)
    the_senior.expected_move_in_date = params.fetch("query_expected_move_in_date")
    the_senior.preferred_lease_length = params.fetch("query_preferred_lease_length")

    if the_senior.valid?
      the_senior.save
      redirect_to("/seniors", { :notice => "Senior created successfully." })
    else
      redirect_to("/seniors", { :alert => the_senior.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_senior = Senior.where({ :id => the_id }).at(0)

    the_senior.first_name = params.fetch("query_first_name")
    the_senior.last_name = params.fetch("query_last_name")
    the_senior.mi = params.fetch("query_mi")
    the_senior.birth_date = params.fetch("query_birth_date")
    the_senior.email = params.fetch("query_email")
    the_senior.phone = params.fetch("query_phone")
    the_senior.gender = params.fetch("query_gender")
    the_senior.sexuality = params.fetch("query_sexuality")
    the_senior.is_smoker = params.fetch("query_is_smoker", false)
    the_senior.is_pet_owner = params.fetch("query_is_pet_owner", false)
    the_senior.ethnicity = params.fetch("query_ethnicity")
    the_senior.marital_status = params.fetch("query_marital_status")
    the_senior.number_of_children = params.fetch("query_number_of_children")
    the_senior.last_profession = params.fetch("query_last_profession")
    the_senior.pets = params.fetch("query_pets")
    the_senior.insurance_provider = params.fetch("query_insurance_provider")
    the_senior.insurance_group_number = params.fetch("query_insurance_group_number")
    the_senior.insurance_number = params.fetch("query_insurance_number")
    the_senior.address1 = params.fetch("query_address1")
    the_senior.address2 = params.fetch("query_address2")
    the_senior.city = params.fetch("query_city")
    the_senior.state = params.fetch("query_state")
    the_senior.zip = params.fetch("query_zip")
    the_senior.hobbies = params.fetch("query_hobbies")
    the_senior.annual_income = params.fetch("query_annual_income")
    the_senior.religion = params.fetch("query_religion")
    the_senior.political = params.fetch("query_political")
    the_senior.affiliation = params.fetch("query_affiliation")
    the_senior.military_affiliation = params.fetch("query_military_affiliation")
    the_senior.alma_mater = params.fetch("query_alma_mater")
    the_senior.is_high_blood_pressure = params.fetch("query_is_high_blood_pressure", false)
    the_senior.is_high_glucose = params.fetch("query_is_high_glucose", false)
    the_senior.BMI = params.fetch("query_BMI")
    the_senior.known_chronic_disease = params.fetch("query_known_chronic_disease")
    the_senior.expected = params.fetch("query_expected")
    the_senior._monthly_payment = params.fetch("query__monthly_payment")
    the_senior.preferred_space_type = params.fetch("query_preferred_space_type")
    the_senior.preferred_sponsor_type = params.fetch("query_preferred_sponsor_type")
    the_senior.preferred_sponsor_age_range = params.fetch("query_preferred_sponsor_age_range")
    the_senior.preferred_sponsor_gender = params.fetch("query_preferred_sponsor_gender")
    the_senior.preferred_sponsor_sexuality = params.fetch("query_preferred_sponsor_sexuality")
    the_senior.ok_with_smoker = params.fetch("query_ok_with_smoker", false)
    the_senior.ok_with_firearms = params.fetch("query_ok_with_firearms", false)
    the_senior.ok_with_pets = params.fetch("query_ok_with_pets", false)
    the_senior.expected_move_in_date = params.fetch("query_expected_move_in_date")
    the_senior.preferred_lease_length = params.fetch("query_preferred_lease_length")

    if the_senior.valid?
      the_senior.save
      redirect_to("/seniors/#{the_senior.id}", { :notice => "Senior updated successfully."} )
    else
      redirect_to("/seniors/#{the_senior.id}", { :alert => the_senior.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_senior = Senior.where({ :id => the_id }).at(0)

    the_senior.destroy

    redirect_to("/seniors", { :notice => "Senior deleted successfully."} )
  end
end
