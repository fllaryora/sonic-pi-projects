# Coded by Francisco Llaryora
# no_name
use_bpm 240

in_thread do
 # use_synth :piano
use_synth :piano
back_note = [:D3, :C3, :B2, :A2,:G2 ]
index_back = 0
ascending = true
timesOfPart = 5
atThreeTime = 1 

delay = 4

  #loop do
 3.times do
    timesOfPart.times do
      2.times do
        #sleep 3
        #play chord(back_note[index_back], :minor ) , amp: 2, decay:
        play chord_degree(:ii, back_note[index_back], :minor), amp: 2, sustain: 5 , cutoff: 130   
        sleep delay
      end # each
      if (ascending)
        index_back = index_back + 1
      else
        index_back = index_back - 1
      end

      if (atThreeTime >=2 )
         delay = delay + 1 
      end
    end # fin parte
    if (ascending)
      index_back = index_back - 1
    else
      index_back = index_back + 1
    end
  ascending = !ascending
  timesOfPart = 4
  atThreeTime = atThreeTime + 1
  end # fin loop 
end # fin hilo


use_synth :piano

base_note = [:D4, :C4, :B3, :A3,:G3 ]
index_note = 0
ascending = true
timesOfPart = 5

atThreeTime = 1
atInternalSecond = false
delay = 1 
3.times do
#loop do
  timesOfPart.times do
    2.times do

      play base_note[index_note], amp: 0.5
      sleep delay
      play :G4, amp: 0.5
      sleep delay
      play base_note[index_note], amp: 0.5
      sleep delay
      if (index_note == 4 && atThreeTime == 3)
        if (atInternalSecond)
          play :A4 , amp: 2, attack: 0, release: 8
          delay = 8
        else
          play :A4 , amp: 2
          atInternalSecond = true
        end
      else
        play :A4 , amp: 2
      end
      sleep delay
    end # each
    if (ascending)
      index_note = index_note + 1
    else
      index_note = index_note - 1
    end
    
    if (atThreeTime >=2 )
      delay = delay + 0.25 
    end
  end ##recorrido en una direccion
  if (ascending)
     index_note = index_note - 1
  else
    index_note = index_note + 1
  end
  ascending = !ascending
  timesOfPart = 4
  atThreeTime = atThreeTime + 1
end ##fin loop
