classdef Car < handle
    
    properties
        driver
        weight             % lb
        current_speed
        max_speed          % m/s
        max_acceleration   % m/s/s
        position           % m
    end
    
    methods

        function [this]=Car(driver, weight, max_speed, max_acceleration) 
            
            if nargin==0
                return
            end
            
            this.driver = driver;
            this.weight = weight;
            this.current_speed = 0;
            this.max_speed = max_speed;
            this.max_acceleration = max_acceleration;
            this.position = 0;
        end
        
        function [x]= stopping_distance(this)
        	x = 0.5 * this.current_speed*this.current_speed / this.max_acceleration;
        end
        
    end
    
end

