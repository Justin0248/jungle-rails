class Admin::DashboardController < ApplicationController
  def show
   Product.count
  end
end
