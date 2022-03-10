class NewsSource {
  NewsSource({
    this.status,
    this.sources,
  });

  String? status;
  List<Source>? sources;

  factory NewsSource.fromJson(Map<String, dynamic> json) => NewsSource(
        status: json["status"],
        sources:
            List<Source>.from(json["sources"].map((x) => Source.fromJson(x))),
      );
}

class Source {
  Source({
    this.id,
    this.name,
    this.description,
    this.url,
    this.language,
    this.country,
  });

  String? id;
  String? name;
  String? description;
  String? url;
  String? language;
  String? country;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        url: json["url"],
        language: json["language"],
        country: json["country"],
      );
}
