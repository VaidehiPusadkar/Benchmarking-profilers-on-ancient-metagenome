##Simulation-3 - Deamination + Fragment length + Modern Human Contamination

./gargammel.pl  --comp 0.19,0.8,0.01 -n 5000000 -l 40 -rl 40 -damage 0.036,0.36,0.009,0.8 -se -ss HS25 -o /simulation3/simulation_damage_high_data/ input_folder/

./gargammel.pl  --comp 0.49,0.5,0.01 -n 5000000 -l 70 -rl 70 -damage 0.03,0.36,0.009,0.4 -se -ss HS25 -o /simulation3/simulation_damage_medium_data/ input_folder/

./gargammel.pl  --comp 0.79,0.2,0.01 -n 5000000 -l 100 -rl 100 -damage 0.026,0.36,0.009,0.1 -se -ss HS25 -o /simulation3/simulation_damage_low_data/ input_folder/

./gargammel.pl  --comp 0.99,0,0.01 -n 5000000 -l 125 -rl 125 -damage 0.022,0.36,0.0,0.0 -se -ss HS25 -o /simulation3/simulation_modern_data/ input_folder/
