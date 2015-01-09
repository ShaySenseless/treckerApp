class PersonalsController < ApplicationController
  def create
    @auftrag = Auftrag.find(params[:auftrag_id])
    @personal = @auftrag.personal.create(personal_params)
    redirect_to auftrag_path(@auftrag)
  end
 
  private
    def personal_params
      params.require(:personal).permit(:mitarbeiter, :machine, :leistung)
    end
end
