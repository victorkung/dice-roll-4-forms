class DiceController < ApplicationController
  def render_homepage
    render({ :template => "dice_templates/homepage" })
  end

  def roll_flexible
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @num_dice.times do
      dice = rand(1..@sides)
      @rolls.push(dice)
    end

    render({ :template => "dice_templates/result_flexible" })
  end

end
