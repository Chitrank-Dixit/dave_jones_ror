class SayController < ApplicationController
  def hello
  	@yo = "Hoo"
  	@now = Time.now
  end

  def byebye
  	@hhh = "HHH from wwe"
  end

  def something
  end
end
