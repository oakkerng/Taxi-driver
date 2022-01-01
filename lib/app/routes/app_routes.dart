part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const register = _Paths.register;
  static const profile = _Paths.profile;
  static const search = _Paths.search;
  static const pastRidesMap = _Paths.pastRidesMap;
  static const customerDetail = _Paths.customerDetail;
  static const pastRides = _Paths.pastRides;
  static const customerMap = _Paths.customerMap;
}

abstract class _Paths {
  static const home = '/home';
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const profile = '/profile';
  static const search = '/search';
  static const pastRidesMap = '/pastRidesMap';
  static const customerDetail = '/customerDetail';
  static const pastRides = '/pastRides';
  static const customerMap = '/customerMap';
}
