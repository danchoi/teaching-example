class SendbacksController < ApplicationController
  def new
    @alert = Alert.find params[:alert_id]
  end

  def create
    @alert = Alert.find params[:alert_id]
    params[:sendback_ids].each do |sendback_id|
      sendback = Sendback.find(sendback_id)
      @alert.sendbacks << sendback
    end
    flash[:notice] = "Added sendbacks to alert: #{@alert.sendbacks.map(&:label).join(', ')}"
    redirect_to @alert
  end


end
