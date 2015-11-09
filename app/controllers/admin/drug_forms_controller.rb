class Admin::DrugFormsController < Admin::DrugsController

  def new
    @drug = Drug.new
    @drug_form = DrugForm.new
  end

  def create
    @drug_form = DrugForm.new(drug_form_params)
    @drug_form.save
  end

  def drug_form_params
    params.require(:drug_form).permit(drug_attributes)
  end

end
