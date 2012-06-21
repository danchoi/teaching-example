class AudiencesController < ApplicationController
  def new
    @alert = Alert.find params[:alert_id]
  end

  def create
    @alert = Alert.find params[:alert_id]
    params[:audience_ids].each do |audience_id|
      audience = Audience.find(audience_id)
      @alert.audiences << audience
    end
    flash[:notice] = "Added audiences to alert: #{@alert.audiences.map(&:label).join(', ')}"
    redirect_to new_alert_sendback_path(@alert)
  end


end
