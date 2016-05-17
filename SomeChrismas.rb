# feliz navidad
use_bpm 160

negra = 1
blanca = negra*2
redonda = blanca*2
corchea = 0.5
semiCorchea = 0.25

#clave de sol
in_thread do
noteCounter = 1
pieza_one_sol = [ 
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:g3], negra ], [ [:c3], corchea+negra], [ [:d3], corchea] ],
[  [ [:e3], blanca+blanca]],
[  [ [:f3], negra], [ [:f3], negra], [[:f3], corchea+negra], [[:f3], corchea] ],
[  [ [:f3], negra], [ [:e3], negra], [[:e3], negra], [[:e3], corchea],[[:e3], corchea] ],
[  [ [:e3], negra], [ [:d3], negra], [[:d3], negra], [[:e3], negra] ],
[  [ [:d3], blanca], [ [:g3], blanca]],
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:g3], negra ], [ [:c3], corchea+negra], [ [:d3], corchea] ],
[  [ [:e3], blanca+blanca]],
[  [ [:f3], negra], [ [:f3], negra], [[:f3], negra], [[:f3], negra] ],
[  [ [:f3], negra], [ [:e3], negra], [[:e3], negra], [[:e3], corchea],[[:e3], corchea] ],
[  [ [:g3], negra], [ [:g3], negra], [[:f3], negra], [[:d3], negra] ],
[  [ [:c3], blanca+blanca]]
]
loop do
pieza_one_sol.each do |compas|
   amp = 8
   compas.each do |notes, duration|
       use_synth :dull_bell
       play notes, amp: amp, release: (duration-0.10)
          amp = 6
     noteCounter = noteCounter + 1
     sleep duration
   end
end
end
end # fin hilo


#clave de sol
in_thread do
noteCounter = 1
pieza_one_sol = [ 
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:g3], negra ], [ [:c3], corchea+negra], [ [:d3], corchea] ],
[  [ [:e3], blanca+blanca]],
[  [ [:f3], negra], [ [:f3], negra], [[:f3], corchea+negra], [[:f3], corchea] ],
[  [ [:f3], negra], [ [:e3], negra], [[:e3], negra], [[:e3], corchea],[[:e3], corchea] ],
[  [ [:e3], negra], [ [:d3], negra], [[:d3], negra], [[:e3], negra] ],
[  [ [:d3], blanca], [ [:g3], blanca]],
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:e3], negra ], [ [:e3], blanca] ],
[  [ [:e3], negra],  [ [:g3], negra ], [ [:c3], corchea+negra], [ [:d3], corchea] ],
[  [ [:e3], blanca+blanca]],
[  [ [:f3], negra], [ [:f3], negra], [[:f3], negra], [[:f3], negra] ],
[  [ [:f3], negra], [ [:e3], negra], [[:e3], negra], [[:e3], corchea],[[:e3], corchea] ],
[  [ [:g3], negra], [ [:g3], negra], [[:f3], negra], [[:d3], negra] ],
[  [ [:c3], blanca+blanca]]
]
loop do
pieza_one_sol.each do |compas|
   amp = 8
   compas.each do |notes, duration|
       use_synth :pretty_bell
       play notes, amp: amp, release: (duration-0.10)
          amp = 6
     noteCounter = noteCounter + 1
     sleep duration
   end
end
end
end # fin hilo
