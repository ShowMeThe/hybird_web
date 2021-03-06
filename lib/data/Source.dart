class Data {
  String imageUrl;
  String contentUrl;
  String name;

  Data(this.imageUrl, this.contentUrl, this.name);
}

class Source {
  static List _cardList = [
    Data(
        "https://images.unsplash.com/photo-1606297158300-5c4f6d171be9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
        "https://unsplash.com/photos/BiePkjHiOAg",
        "Varese, VA, Italia"),
    Data(
        "https://images.unsplash.com/photo-1596119481699-ce2c83ecc81a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
        "https://unsplash.com/photos/bDqh5r5WMOg",
        "Varese, VA, Italia"),
    Data(
        "https://images.unsplash.com/photo-1571518687102-eabee06e4b04?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
        "https://unsplash.com/photos/ZnVvDbRwZqQ",
        "Red ball on gray"),
    Data(
        "https://images.unsplash.com/photo-1568558100488-e5f38185a9d4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1934&q=80",
        "https://unsplash.com/photos/_9dVpDVe5_U",
        "Blue wooden adirondack chair"),
    Data(
        "https://images.unsplash.com/photo-1599229526921-4f29d42b0b41?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=658&q=80",
        "https://unsplash.com/photos/ZueEQBEPQ6M",
        "Brown wooden dock"),
    Data(
        "https://images.unsplash.com/photo-1560868517-388c5a7939a8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
        "https://unsplash.com/photos/0UGF6x4qc_w",
        "Sunset"),
    Data(
        "https://images.unsplash.com/photo-1528091958014-be79e761499e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
        "https://unsplash.com/photos/u-lqIST2vvA",
        "Lighthouse on the top")
  ];

  static List<dynamic> getCardList() {
    return _cardList;
  }
}
