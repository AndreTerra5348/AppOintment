# AppOintment (WIP)

![](https://github.com/AndreTerra5348/AppOintment/actions/workflows/ci.yml/badge.svg)

## Description
This is an offline appointment scheduling app made with Flutter, using SQLite as database and BLoC pattern for state management. It is a work in progress.

## Motivation

I made this app to practice TDD and Layered Architecture. I also wanted to learn more about flutter framework in general.

## Overview
The project is divided into 4 layers

* Domain: contains the domain objects and contracts
    * Entitites contains immutable value objects that uses Either<L, R> (from [dartz](https://pub.dev/packages/dartz)) to represent success or failure when created.
    * Repository is a contract that defines the methods that the infrastructure layer must implement.
* Infrastructure: contains data sources and repositories implementations
    * Data sources are responsible for getting data from external sources (e.g. database, network, etc)
    * Repositories are responsible for dealing with data sources and returning domain objects
* Application: contains blocs
    * Blocs are responsible for getting data from repositories and transforming it into a state that can be consumed by the UI
* Presentation: contains widgets and pages
    * Widgets are reusable components that can be used in multiple pages
    * Pages are the screens that the user sees


## Getting Started

To run the app, you need to have flutter installed on your machine. You can find the installation instructions [here](https://flutter.dev/docs/get-started/install).

clone this repository

```bash
git clone https://github.com/AndreTerra5348/AppOintment.git
```

change branch to develop

```bash
git checkout develop
```

install dependencies

```bash
flutter pub get
```

run the app

```bash
flutter run
```

## TODO

* [x] Add Client model and CRUD operations
* [ ] Add Appointment model and CRUD operations


## License

Distributed under the MIT License. See LICENSE for more information.

## Author
[André Terra](https://www.linkedin.com/in/andr%C3%A9-terra-2a7728145/)
