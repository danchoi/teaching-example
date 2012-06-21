class AlertsController < ApplicationController
  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.create
    params[:alert_method_ids].each do |alert_method_id|
      alert_method = AlertMethod.find(alert_method_id)
      @alert.alert_methods << alert_method
    end
    flash[:notice] = "Created alert of method; #{@alert.alert_methods.map(&:label).join(', ')}"
    redirect_to new_alert_audience_path(@alert)
  end

  def show
    @alert = Alert.find params[:id]
  end
end
