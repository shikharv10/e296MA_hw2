from abc import ABCMeta, abstractmethod


class Driver:
    __metaclass__ = ABCMeta

    def __init__(self, name, weight):
        self.name = name
        self.weight = weight

    @abstractmethod
    def throttle_action( car,  env):
        pass

    @abstractmethod
    def stop_for_refueling( car,  env):
        pass


class ChillDriver(Driver):

    def throttle_action(self, car, env):
        if car.current_speed < car.max_speed:
            return 0.5 * car.max_acceleration
        else:
            return -0.5 * car.max_acceleration

    def stop_for_refueling(car,  env):
        next_station = env.get_next_station_following(car.position)
        stop_at = car.position + car.stopping_distance()

        if stop_at<next_station:
            return True
        else:
            return False


class AggressiveDriver(Driver):
    def throttle_action(self, car, env):
        if car.current_speed < car.max_speed:
            return car.max_acceleration
        else:
            return -car.max_acceleration

    def stop_for_refueling(car, env):
        return False
