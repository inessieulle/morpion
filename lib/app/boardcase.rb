require_relative 'board.rb'
require_relative 'player.rb'

class BoardCase
  attr_accessor :value, :caseid


  def initialize(caseid)
    @value = ""
    @caseid = caseid
  end

end