class Todomodel {
    int? userId;
    int? id;
    String? title;
    bool? completed;

    Todomodel({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    factory Todomodel.fromJson(Map<String, dynamic> json) => Todomodel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

  get name => null;

  get email => null;

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}
