class SegrescatesController < ApplicationController

  def create
  	@rescate = Rescate.find(params[:rescate_id])
  	@segrescate = @rescate.segrescates.create(params[:segrescate].permit(:rescate_id, :text, :body))

  	redirect_to @rescate

  end

  def destroy
    @rescate = Rescate.find(params[:rescate_id])
  	@segrescate = Segrescate.find(params[:id])
  	@segrescate.destroy

  	redirect_to @rescate
end
  private
    def segrescates_params
      params.require(:segrescate).permit(:text,:rescate_id,:body)
    end
end
