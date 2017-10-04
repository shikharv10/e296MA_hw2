class Car:

    def __init__(self,driver, weight, max_speed, max_acceleration):
        self.driver = driver
        self.weight = weight
        self.current_speed = 0
        self.max_speed = max_speed
        self.max_acceleration = max_acceleration
        self.position = 0

    def stopping_distance(self):
        return 0.5 * self.current_speed*self.current_speed / self.max_acceleration;
