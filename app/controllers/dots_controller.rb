class DotsController < ApplicationController
  def index
    @dots_by_rows = uniqe_rows.map do |row|
      Dot.where(row:).limit(dot_limit)
    end
  end


  private

  def uniqe_rows
    Dot.pluck(:row).uniq
  end

  def dot_limit
    params[:dot_limit] || 3
  end
end
