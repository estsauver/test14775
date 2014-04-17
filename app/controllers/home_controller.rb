class HomeController < ApplicationController

  def landing_page
    # make sure we have a user
    @user = User.last || User.create!

    # then redirect to user through the polymorphic helper
    redirect_to @user
  end



  def url_for *args, &block
    # notice what ends up in url_for
    Rails.logger.debug *args
    Rails.logger.debug caller.join("\n")
    Rails.logger.debug "="*80

    super *args, &block
  end

end
