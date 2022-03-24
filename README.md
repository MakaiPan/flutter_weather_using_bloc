# flutter_weather_using_bloc

A weather app develops with Flutter and implements the BLoC design pattern to help state management.  

## Features

- Search
- Cubit (BLoC)
- Unit Test
- Widget Test
- Fetch data from Network

## TODO
- [x] Widget test
- [ ] Current location weather
- [ ] Picture about location and weather states

## Packages
| **Packages**                          | **Description**         |
|---------------------------------------|-------------------------|
| [http](https://pub.dev/packages/http) | Fetch data from network |
| [test](https://pub.dev/packages/test) | Testing                 |
| [bloc](https://bloclibrary.dev/)      | State management        |


## APIs
| **API**                                   | **Description**     |
|-------------------------------------------|---------------------|
| [OpenWeather](https://openweathermap.org) | Weather data source |

## Directory Structure

The project directory structure is as follows:
```
lib/
|--applications/
|--models/
|--pages/
|--utils/
```

| **Directory** | **Description**                                                        |
|---------------|------------------------------------------------------------------------|
| applications  | Application layer, e.g. cubit                                          |
| models        | Models layer directory                                                 |
| pages         | View layer directory                                                   |
| utils         | Utility/common functions or properties, e.g. services, constants, etc. |

### applications
```
applications/
|--cubit
    |--weather_cubit.dart
    |--weather_state.dart
```  

### models
```
models/
|--weather.dart
```  

### pages
```
pages/
|--home
    |--widgets
        |--city_input_body.dart
        |--city_weather.dart
    |--home_page.dart
```  

### utils
```
utils/
|--constants.dart
|--services.dart
```