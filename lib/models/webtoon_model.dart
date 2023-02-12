class WebtoonModel {
  late final String title, thumb, id;

  //named contructor
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
