class DotsController < ApplicationController
  def index
    @dots_by_rows = uniqe_rows.map do |row|
      Dot.where(row:).limit(dot_limit)
    end
  end

  def update
    @dot = Dot.find(params[:id])
    @previous_dot = Dot.find_by(row: @dot.row, enabled: true)
    @dot.toggle!(:enabled)
    
    @previous_dot.toggle!(:enabled) if @previous_dot && @previous_dot != @dot
  end

  private

  def uniqe_rows
    Dot.pluck(:row).uniq
  end

  def dot_limit
    params[:dot_limit] || 3
  end
end
