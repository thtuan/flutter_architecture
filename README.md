# Flutter Architecture

<p align="center">
Flutter repository follow BLOC Architecture and Common library
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/thtuan/flutter_architecture/master/screenshots/state_flutter.png" width="500" alt="build">
</p>

## Getting Started

- Build and run on dev environment just type this on terminal

```sh
cd PATH/TO/YOUR/PROJECT 

flutter pub get

flutter run --dart-define="ENV=dev|staging|production" --flavor dev|pro
```

## Architecture Flow

Diagram below is a common flow of Bloc Architecture

```mermaid
graph LR
A[Widget/Page] -- User/App event --> B[Bloc/Cubit]
B -- Update data/ state --> E[Bloc State]
E -. Map data to UI .-> A
B --> C[Repository A]
B --> C1[Repository B]
C -.-> B
C1 -.-> B
C -- Request data --> D[(Api/Adapter/Third party lib)]
D -. data callback .-> C
C1 -- Request data --> D1[(Another Api/Adapter/Third party lib)]
D1 -. data callback .-> C1

A -- Update global event --> B1[Global cubit]
E1[Global state] -. Update global state .-> A
B1 --> E1
B1 --> C2[Global Repository]
C2 --> D2[(Global Api/Adapter/Third party lib)]
D2 -. data callback .-> C2
C2 -.-> B1
```

## Features

- Follow [Bloc](https://pub.dev/packages/flutter_bloc) architecture with Cubit
- Use [freezed](https://pub.dev/packages/freezed)
  and [build_runner](https://pub.dev/packages/build_runner) for create Models and Bloc States
- Use [go_router](https://pub.dev/packages/go_router) for navigation
- Use [dio](https://pub.dev/packages/dio)[retrofit](https://pub.dev/packages/retrofit) for api
  client

## Done

- [x] Building CI/CD with GitHub Action
- [x] Support calling function with WebRTC and WebSocket
- [x] Add email filter example

## WIP

- [ ] Refactor code style
- [ ] Config deeplink and redirect

## FUTURE

- [ ] Add local cache for UX improvement
- [ ] Support notification
- [ ] Performance -->>>
- [ ] Stream flow explain

## Licences

Updating...