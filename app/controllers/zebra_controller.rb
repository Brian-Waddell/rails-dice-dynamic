class  ZebraController < ApplicationController 

  def lion 

    render({:template => "/game_template/home"})

  end 


  def girffae 
   
    @attempts = []
    2.times do 
    @first_die = rand(1..6) 
    @attempts.push(@first_die)
    end

    render({:template => "/game_template/two_dice_six"})
  end 

    def dice 
      @array = []
      2.times do 
       die = rand(1..10)
       @array.push(die)
      end

      render({:template => "/game_template/two_dice_ten"})
    end 

    def bird 
      @array = []
      1.times do 
      @random_number_generator = rand(1..20)
      @array.push(@random_number_generator)
      end 

     render({:template => "/game_template/one_die_twenty"})
    end

  def mouse 
    @rolls = []
    5.times do 
      dice = rand(1..4)
      @rolls.push(dice)
     end 

    render({:template => "/game_template/five_dice_four"})
  end 
  
  def generator 
    @num_dice = params.fetch("random").to_i
    @sides = params.fetch("number").to_i 

    @rolls = []
    die = rand(1..6)

    @num_dice.times do 
    die = rand(1..@sides)

      @rolls.push(die)
    end 
render({:template => "/game_template/sides_dice"})
end 
end 
