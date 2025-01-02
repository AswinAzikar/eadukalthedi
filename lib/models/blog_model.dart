class Blog {
  final int id;
  final String title;
  final String description;
  final String postedDate;
  final int likes;
  final int shares;

  Blog({
    required this.id,
    required this.title,
    required this.description,
    required this.postedDate,
    required this.likes,
    required this.shares,
  });

  
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      postedDate: json['posted_date'],
      likes: json['likes'],
      shares: json['shares'],
    );
  }

  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'posted_date': postedDate,
      'likes': likes,
      'shares': shares,
    };
  }
}
