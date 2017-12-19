classdef AggressiveDriver < Driver
    
    methods
        
        function this = AggressiveDriver(name,weight) 
            this = this@Driver(name, weight);
        end
        
        function [x] = throttle_action(this, car,  env)
                 if(car.current_speed<car.max_speed)
                   x = 0.5*car.max_acceleration;
                 else
                   x = -0.5*car.max_acceleration;
                 
                 end
        end
        
            
        function [x] = stop_for_refueling(this,  car,  env)
            x = false;
        end
        
    end
    
end

