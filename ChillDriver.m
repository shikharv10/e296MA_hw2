classdef ChillDriver < Driver
    
    methods
        
        function this = ChillDriver(name,weight) 
            this = this@Driver(name, weight);
        end
        
        function [x] = throttle_action(this,car,env)
            if car.current_speed<car.max_speed
                x = 0.5*car.max_acceleration;
            else
                x = -0.5*car.max_acceleration;
            end
        end
            
            
        function [x] = stop_for_refueling(this,car,env)
            next_station = env.get_next_station_following(car.position);
            stop_at = car.position + car.stopping_distance();
            if stop_at<next_station 
                x = true;
            else
                x = false;
            end
        end
        
    end
    
end

