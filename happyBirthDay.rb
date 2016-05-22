#Happy Birthday
use_bpm 160

negra = 1
blanca = negra*2
redonda = blanca*2
corchea = 0.5
semiCorchea = 0.25
corcheaPuntillo = corchea + semiCorchea

#clave de sol y fa
in_thread do
noteCounter = 1
pieza_en_sol = [ 

[  [ :rest, blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ] ], 
[  [ [:g4,:c5,:e4,:g3,:c3], blanca],  [ [:g4,:c5,:c4,:d3], negra ] ], 
[  [ [:c4,:f4,:f3], blanca], [ [:a4,:d5,:d4,:d3], negra ] ],
[  [ [:g3,:g2,:g4], blanca],   [ [:g3,:g2,:g4,:f4,:d5], negra ] ],
[  [ [:c4,:c3,:e4,:g4,:c5], blanca ],[:rest, negra ] ], #el de 3 ##ARRANCA VOCAL en el rest
[  [ [:e4,:g4,:c5], blanca+negra ] ], 
[  [ [:d4,:f4,:g4,:b4], blanca+negra ] ], 
[  [ [:f4,:g4,:b4,:d5], blanca+negra ] ], 
[  [ [:e4,:g4,:c5], blanca+negra ] ], 
[  [ [:e4,:g4,:Bb4,:c5], blanca+negra ] ], 
[  [ [:c4,:f4,:a4], blanca ] , [ :rest, negra]], 
[  [ [:e4,:g4,:c5], blanca ] , [ :rest, negra]], 
[  [ [:c4,:e4,:g4,:c5], blanca ], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ] ], 
[  [ [:a4],negra], [ [:g4], negra],  [ [:c4,:e4,:g4,:c5], negra ] ],
[  [ :rest, blanca ], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ] ],
[  [ [:a4],negra], [ [:g4], negra],  [ [:e4,:g4,:d5], negra ] ],
[  [ [:e4,:g4,:c5], blanca ], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ] ] 

]

pieza_en_sol.each do |compas|
   amp = 8
   compas.each do |notes, duration|
       use_synth :zawa
       #with_fx :reverb do
        play notes, amp: amp, release: (duration-0.10)
       #end
          amp = 6
     noteCounter = noteCounter + 1
     sleep duration
   end
end

end # fin hilo


#excepciones
in_thread do
noteCounter = 1

pieza_de_excepciones = [ 

[  [ :rest, blanca+ negra] ], 
[  [ [:g5], negra], [ :rest, blanca] ],
[  [ [:b4], negra], [ :rest, negra], [[:f5],corcheaPuntillo ], [[:f5],semiCorchea] ],
[  [ [:e5,:c5], negra], [ [:c5], negra ], [ :rest, negra]  ],
[  [ :rest, blanca+negra] ],  #el de 3 ##ARRANCA VOCAL
[  [ [:c3],negra ], [ [:c4], blanca] ], 
[  [ [:g2],negra ], [ [:g3], blanca] ], 
[  [ [:g2],negra ], [ [:g3], blanca] ], 
[  [ [:c3],negra ], [ [:c4], blanca] ], 
[  [ [:c3],negra ], [ [:c4], blanca] ], 
[  [ [:f2],negra ], [ [:f3], negra] , [ [:d2,:c4,:f4,:a4,:c5], negra]], 
[  [ [:g2],negra ], [ [:g3], negra] , [ [:g2,:d4,:f4,:g4,:b4], negra]], 
[  [ [:c3],corchea ], [ [:a2], corchea], [ [:g2], corchea], [ [:f2], corchea], [ [:e2], corchea], [ [:d2], corchea] ], 
[  [ [:c2],corchea ], [ [:g2], corchea], [ [:e3], corchea], [ [:c3], corchea], [ [:g3], corchea], [ [:e3], corchea] ], 
[  [ [:g2],corchea ], [ [:d3], corchea], [ [:a3], corchea], [ [:g3], corchea], [ [:b3], corchea], [ [:a3], corchea] ], 
[  [ [:g2],corchea ], [ [:d3], corchea], [ [:g3], corchea], [ [:a3], corchea], [ [:b3], corchea], [ [:d4], corchea] ],
[  [ [:c3],corchea ], [ [:g3], corchea], [ [:c4], corchea], [ [:b3], corchea], [ [:a3], corchea], [ [:g3], corchea] ]
]

pieza_de_excepciones.each do |compas|
   amp = 8
   compas.each do |notes, duration|
       use_synth :zawa
        #with_fx :reverb do
         play notes, amp: amp, release: (duration-0.10)
        #end
          amp = 6
     noteCounter = noteCounter + 1
     sleep duration
   end
end

end # fin hilo



#fuckit, because it sould not be exist
in_thread do
noteCounter = 1

pieza_de_voz = [ 

[  [ :rest, blanca+ negra] ],
[  [ :rest, blanca+ negra] ],
[  [ :rest, blanca+ negra] ],
[  [ :rest, blanca+ negra] ], 
[  [ :rest, blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ]  ],  #el de 3 ##ARRANCA VOCAL
[  [ [:a4],negra], [[:g4],negra], [[:c5],negra] ],   
[  [ [:b4], blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ]  ],   
[  [ [:a4],negra], [[:g4],negra], [[:d5],negra] ],      
[  [ [:c5], blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ]  ],    
[  [ [:g5],negra], [[:e5],negra], [[:c5],negra] ],  
[  [ [:b4], negra],   [ [:a4], negra], [ [:f5], corcheaPuntillo],  [ [:f5], semiCorchea ]  ],     
[  [ [:e5],negra], [[:c5],negra], [[:d5],negra] ],    
[  [ [:c5], blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ]  ],   
[  [ [:a4],negra], [[:g4],negra], [[:c5],negra] ],     
[  [ [:b4], blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ]  ],  
[  [ [:a4],negra], [[:g4],negra], [[:d5],negra] ], 
[  [ [:c5], blanca], [ [:g4], corcheaPuntillo],  [ [:g4], semiCorchea ]  ],
[  [ [:g5],negra], [[:e5],negra], [[:c5],negra] ],  
[  [ [:b4], negra],   [ [:a4], negra], [ [:f5], corcheaPuntillo],  [ [:f5], semiCorchea ]  ],     
[  [ [:e5],negra], [[:c5],negra], [[:d5],negra] ],    
[  [ [:c5], blanca],[:rest,negra] ]
]

pieza_de_voz.each do |compas|
   amp = 8
   compas.each do |notes, duration|
       use_synth :piano
         play notes, amp: amp, release: (duration-0.10)
          amp = 6
     noteCounter = noteCounter + 1
     sleep duration
   end
end

end # fin hilo


#fuckit, because it sould not be exist
in_thread do
noteCounter = 1

pieza_de_fuckit = [ 

[  [ :rest, blanca+ negra] ],
[  [ [:e5], negra ],[ :rest, blanca] ], 
[  [ [:a4], negra ], [ :rest, blanca] ], 
[  [ :rest, blanca+ negra] ], 
[  [ :rest, blanca+negra] ], 
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ :rest, blanca+negra] ],   
[  [ [:c4,:e4], blanca ],[ :rest, negra] ],  
[  [ [:d4,:e4,:g4,:b4], blanca+negra ] ],
[  [ [:d4,:f4], blanca+negra ] ],
[  [ :rest, blanca+negra] ]
]

pieza_de_fuckit.each do |compas|
   amp = 8
   compas.each do |notes, duration|
       use_synth :zawa
       #with_fx :reverb do
        play notes, amp: amp, release: (duration-0.10)
       #end
          amp = 6
     noteCounter = noteCounter + 1
     sleep duration
   end
end

end # fin hilo

