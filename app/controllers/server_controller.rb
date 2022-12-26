class ServerController < ApplicationController
  before_action :init, only: :calculation
  def calculation
    orig_array = params[:arr]
    @result_arr, @max_i = ServerHelper.solve(orig_array)
    i = 0
    numbers = Array.new(@result_arr.compact.length) do |_el|
      {value: @result_arr.compact[i], index: i+=1}
    end
    respond_to do |format|
      format.html
      format.xml { render xml: numbers }
    end
  end

  # def zero_segments?
  #   if @result_arr.compact.length.zero?
  #     true
  #   else
  #     false
  #   end
  # end
  #
  # def self.solve(arr)
  #   arr = arr.split.map(&:to_i)
  #   i = 0
  #   arr.each do |el|
  #     @temp_count, i = ServerController.sqrt(el, i)
  #     if @temp_count > @max_count
  #       @max_count = @temp_count
  #       @max_i = i
  #     end
  #   end
  #   [@result_arr, @max_i]
  # end
  #
  # def self.sqrt(elem, ind)
  #   if Math.sqrt(elem).to_s.match(/^\d*.0$/)
  #     @result_arr[ind] = if @temp_count.zero?
  #                          elem.to_s
  #                        else
  #                          "#{@result_arr[ind]} #{elem}"
  #                        end
  #     [@temp_count + 1, ind]
  #   else
  #     [0, ind + 1]
  #   end
  # end

  def init
    @result_arr = []
    @max_i = 0
    @temp_count = 0
    @max_count = 0
  end

end
