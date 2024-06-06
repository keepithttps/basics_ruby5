class Train
  attr_reader :number, :route, :wagons, :type

  def initialize(number)
    @number = number
    @wagons = wagons
  end

  def add_wagon(wagon)
    if wagon.type == type
      wagons << wagon
    elsif wagon.type == type
      wagons << wagon
    else
      puts "Нельзя добавить вагон #{wagon.type}"
    end 
  end 

  def delete_wagon(wagon)
    wagons.delete(wagon)      
  end

  def add_route(route)
    route = route
    current_station_index = 0
    current_station
  end

  def current_station
    route.station[current_station_index]
  end

  def add_train_on_station
    current_station.add_train_on_station(self)
  end

  def go_next_station
    current_station.delete_station(self)
    current_station = route.station[current_station_index += 1]
    current_station.add_station(self)
    current_station.add_train_on_station
    current_station
  end

  def go_previous_station
    current_station.delete_station(self)
    current_station = route.station[current_station_index -= 1]
    current_station.add_station(self)
    current_station.add_train_on_station
    current_station
  end
end
