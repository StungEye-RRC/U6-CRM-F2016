class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end
  # Next the associated view will be rendered: app/views/finder/index.html.erb

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email: '')
  end
end
