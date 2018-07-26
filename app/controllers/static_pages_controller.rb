class StaticPagesController < ApplicationController
  def index
    @users = User.all
    @punch = Punch.new
  end

  # POST
  def add_punch
    punch_params = params.require(:punch)
    pay_period = PayPeriod.last
    @punch = Punch.new({:user_id=>punch_params[:user], :time=>DateTime.current, :pay_period=>pay_period})
    @punch.save!
    redirect_to '/'
  end
end
