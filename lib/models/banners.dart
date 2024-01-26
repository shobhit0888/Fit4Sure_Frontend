class Banners{
    String? image;
    Banners({this.image});
    Banners.fromJson(Map<String, dynamic> json){
        image = json['image'];
    }
}