# frozen_string_literal: true

class DotComponent < ViewComponent::Base
  def initialize(dot:)
    @dot = dot
  end

  private

  def style
    "margin: 4px;
     border-radius: 999px;
     width: 20px;
     height: 20px;
     background-color: #{color};
    "
  end

  def color
    @dot.enabled? ? 'green' : 'gray'
  end
end
