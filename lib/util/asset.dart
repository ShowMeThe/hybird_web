

class Asset{

  static final _basePath = "images";

  static String pathByName(String name){
     return "$_basePath/$name";
  }
}