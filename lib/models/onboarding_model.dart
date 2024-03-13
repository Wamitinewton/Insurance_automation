class OnboardingModel{
  final String img;
  final String title;
  final String subTitle;
   
   OnboardingModel( {
    required this.img,
    required this.title,
    required this.subTitle,
   
   });

  static List<OnboardingModel> listOfItems = [
    OnboardingModel(
      
      img: "assets/images/istockphoto-1204150667-612x612.jpg", 
      
      title: "Discover our well automated insurance systems", 
      
      subTitle: "An automated insurance system is a digital platform or software that streamlines various aspects of insurance processes using artificial intelligence (AI) and automation. "),

      OnboardingModel(
        
        img: "assets/images/istockphoto-1351466409-612x612.jpg", 
        
        title: "Share your insuring experiences with us", 
        
        subTitle: "These systems are designed to handle tasks such as policy management, claims processing, underwriting, risk assessment, and customer service."),

        OnboardingModel(
          
          img: "assets/images/istockphoto-1409928874-612x612.jpg", 
          
          title: "Find your best insuring system", 
          
          subTitle: " By leveraging advanced algorithms and data analytics, automated insurance systems aim to improve efficiency, accuracy, and customer experience while reducing administrative overhead and operational costs for insurance companies.")
   ];

   
}