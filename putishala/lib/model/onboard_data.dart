class OnBoarding {
  final String title;
  final String image;
  final String titlebottom;

  OnBoarding({
    required this.title,
    required this.image,
    required this.titlebottom,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
      title: 'স্বাগতম \n সবচেয়ে বড় বইয়ের ভান্ডারে',
      image: 'assets/images/onboarding_1.jpg',
      titlebottom: 'পুথিশালা'),
  OnBoarding(
    title: 'যেখানেই যান সাথে রাখুন আপনার পছন্দের \n ই-বুক কালেকশন লাইব্রেরি ',
    image: 'assets/images/onboarding_2.jpg',
    titlebottom: 'পুথিশালা',
  ),
  OnBoarding(
    title: 'সব রকমের বইয়ের কালেকশন পাচ্ছেন পুথিশালায় ',
    image: 'assets/images/onboarding_3.jpg',
    titlebottom: 'পুথিশালা',
  ),
];
