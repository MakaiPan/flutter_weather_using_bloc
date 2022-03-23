# flutter_weather_using_bloc

A weather app develops with Flutter and implements the BLoC design pattern to help state management.  

## TODO
- [ ] Widget test
- [ ] Integration test
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

##Directory Structure

The project directory structure is as follows:
```
|--lib
    |--applications
        |--cubit
    |--models
    |--pages
        |--home
            |--widgets
    |--utils
```

| **Directory** | **Description**                                     |
|---------------|-----------------------------------------------------|
| applications  | Application layer, e.g. cubit                       |
| models        | Models layer                                        |
| pages         | View layer                                          |
| utils         | Some utilities, e.g. NetworkHelper, constants, etc. |