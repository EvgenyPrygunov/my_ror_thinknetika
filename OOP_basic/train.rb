class Train

  attr_reader :number, :type, :quantity_of_wagons, :train_route
  attr_writer :speed

  def initialize(number, type, quantity_of_wagons)
    @number = number
    @type = type
    @quantity_of_wagons = quantity_of_wagons
    @speed = 0
  end

  def stop
    self.speed = 0
  end

  def add_wagon
    @quantity_of_wagons += 1 if @speed == 0
  end

  def delete_wagon
    @quantity_of_wagons -= 1 if @speed == 0
  end

  def get_route(route)
    @train_route = route
    @station_index = 0
    @train_route.route_stations[0].parking_trains(self)
  end

  def current_station
    @train_route.route_stations[@station_index]
  end

  def previos_station
    @train_route.route_stations[@station_index - 1] if @train_route && @station_index >= 1
  end

  def next_station
    @train_route.route_stations[@station_index + 1] if @train_route && @station_index < (@train_route.route_stations.size - 1)
  end

  def go_to_next_station
    if @train_route && @station_index < (@train_route.route_stations.size - 1)
      @train_route.route_stations[@station_index].leaving_trains(self)
      @station_index += 1
      @train_route.route_stations[@station_index].parking_trains(self)
    end
  end

  def go_to_previos_station
    if @train_route && @station_index >= 1
      @train_route.route_stations[@station_index].leaving_trains(self)
      @station_index -= 1
      @train_route.route_stations[@station_index].parking_trains(self)
    end
  end

end
