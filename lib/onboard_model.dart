class OnboardModel{
  String? title;
  String? imageUrl;
  String? body;
  OnboardModel({required this.title,required this.body,required this.imageUrl});
}

List <OnboardModel> screens = <OnboardModel>[
  OnboardModel(title: 'Proven Specialists', body: 'We check each specialists before he starts work', imageUrl: 'assets/Illustration (1).png'),
  OnboardModel(title: 'Honest Ratings', body: 'We check each specialists before he starts work', imageUrl: 'assets/Illustration (2).png'),
  OnboardModel(title: 'Insured Orders', body: 'We check each specialists before he starts work', imageUrl: 'assets/Illustration (3).png'),

];