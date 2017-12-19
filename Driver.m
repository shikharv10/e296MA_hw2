classdef Driver < handle
    
    properties
        name
        weight
    end
    
    methods
        function this = Driver(name,weight) 
            this.name = name;
            this.weight = weight;
        end
    end
        
    methods(Abstract)
        throttle_action(this,  car,  env);
        stop_for_refueling(this,  car,  env);
    end
    
end

