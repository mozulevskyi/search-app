class HomeController < ApplicationController

  def index
  end

  def input_data
    value = params[:option].downcase
    values = value.split(' ')
    loaded_data = LOADED_DATA

    if values.count > 1
      sorted_data = []
      values.each do |value|
        unless sorted_data.present?
          data = loaded_data
        else
          data = sorted_data
        end
        sorted_data = search_engine(value, data)
      end

      @all_values = sorted_data
    else
      search_engine(value, loaded_data)
    end
  end

  def search_engine(value, data)
    @all_values = []
    options = ['Name', 'Type', 'Designed by']

    options.each do |option|
      sorted_data = data.select do |opt|
        next if @all_values.include?(opt)
        opt[option].downcase.include?(value)
      end
      sorted_data.each { |val| @all_values << val}
    end

    @all_values
  end

end