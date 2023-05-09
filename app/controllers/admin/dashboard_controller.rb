class Admin::DashboardController < ApplicationController
  def show
   Product.count
   Category.count
  end
end
