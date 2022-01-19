const String homeRoute = "/";
const String contendRoute = "/contend";
const String placesRoute = "/places";
const String infoRoute = "/info";
const String eventRoute = "/events";

String linkMapsAndroid(String lat, String lng) =>
    "comgooglemaps://?center=$lat,$lng";

String linkWhatsapp(int numeroTelf) =>
    "https://api.whatsapp.com/send?phone=$numeroTelf";
