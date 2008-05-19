class Admin::BaseController < ApplicationController
  before_filter :authorize
end
