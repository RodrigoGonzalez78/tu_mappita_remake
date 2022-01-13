const String homeRoute = "/";
const String contendRoute = "/contend";

String linkMapsAndroid(String lat, String lng) =>
    "comgooglemaps://?center=$lat,$lng";

String linkWhatsapp(int numeroTelf) =>
    "https://api.whatsapp.com/send?phone=$numeroTelf";
