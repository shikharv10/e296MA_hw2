clear
close all

env = Environment();

car1 = Car(ChillDriver('Chris Dunlop', 130),800,40,5);
car2 = Car(AggressiveDriver('Ann Merriweather', 160),400,60,7);

env.cars = [car1 car2];

disp('Success!')
