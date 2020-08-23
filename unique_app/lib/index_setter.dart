import 'dart:io';

class RouteSetter {
  var myIndex;

  setCurrentRoute(String index) {
    myIndex = index;
/*
    var availableRoutes = ['0', '1']; //0 - Home, 1 - Sobre, etc...
    var currentRoute = index;
    var myUri;

    if (currentRoute == '0') //estamos na Home
    {
      myUri = '/';
    } else if (currentRoute == '1') //estamos na Sobre
    {
      myUri = '/Sobre';
    }*/
  }

  getCurrentRoute() {
    return myIndex;
  }
}
