class ApplicationController < ActionController::Base
  before_action :authenticate_tenant!

     ##    philia defines a default max_tenants, invalid_tenant exception handling
     ##    but you can override these if you wish to handle directly
  rescue_from ::Philia::Control::MaxTenantExceeded, :with => :max_tenants
  rescue_from ::Philia::Control::InvalidTenantAccess, :with => :invalid_tenant

end
