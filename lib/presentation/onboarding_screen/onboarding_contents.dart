class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your work ",
    image: "assets/onboarding/img1.jpg",
    desc: "The gym offers a diverse range of exercise options, catering to different fitness preferences and goals, ensuring there's something for everyone to enjoy and benefit from.",
  ),
  OnboardingContents(
    title: "Stay organized with team",
    image: "assets/onboarding/img2.jpg",
    desc:
        "Whether it's lifting weights, running on the treadmill, or participating in group classes, the gym provides a supportive environment where individuals can challenge themselves and strive for improvement.",
  ),
  OnboardingContents(
    title: "Get notified when work happens",
    image: "assets/onboarding/img3.jpg",
    desc:
        "Engaging in regular gym sessions not only enhances physical strength and endurance but also fosters a sense of community and camaraderie among members, promoting a shared commitment to health and wellness.",
  ),
];
