=begin ********************************************************************************************
Алгоритм работы:
В задаче сформированы справочники станций, маршрутов, поездов и вагонов.
Просмотр справочников - через команды меню: "st ls, rt ls, tr ls, wg ls".

Порядок создания новых объектов:
1. Добавить в справочник новые станции - station+/station-.
2. Создать новый маршрут - route+/route-.
3. Формирование маршрута - в маршрут добавить/удалить станцию - st add/st del/st show/st clear.
3. Создать поезд - train.
4. Формирование состава: создать вагон и добавить в состав поезда - "car"/ "car+".
                          удалить вагон из состава - "car-".
4. Назначить маршрут поезду       - "set route".
5. Информация о созданном поезде  - "info".
6. Управление поездом:
                      скорость/увеличить/уменьшить        - speed/speed up/speed down
                      принять/отправить поезд на станции  - st in/ st out.
                      прицепить/отцепить вагон к поезду   . car+/car- - 
7. Показать список поездов на станции - "st show" (Station.all)
=end 

require_relative 'instance_counter'
require_relative 'station'
require_relative 'route'
require_relative 'manufacturer'
require_relative 'wagon'
require_relative 'passenger_wagon'
require_relative 'cargo_wagon'
require_relative 'train'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'interface.rb'

spr_station = Station.all                                    # Справочник станций
spr_route = Route.all                                        # Справочник маршрутов
spr_train = Train.all                                        # Справочник поездов
park_wagon = Wagon.all                                       # Подвижной состав

#---------------------------- Интерфейс -----------------------------------------------------------
interface = Interface.new
interface.menu(spr_station,spr_route,spr_train,park_wagon)
