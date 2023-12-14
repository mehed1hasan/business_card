class CardDesignModel{
  final String designImage;
  final String designName;

  CardDesignModel({
    required this.designImage,
    required this.designName,
  });

}

List<CardDesignModel> designList = [
  CardDesignModel(
    designImage: 'assets/card_design/wave.png',
    designName: 'Wave',
  ),
  CardDesignModel(
    designImage: 'assets/card_design/modern.png',
    designName: 'Modern',
  ),
  CardDesignModel(
    designImage: 'assets/card_design/sleek.png',
    designName: 'Sleek',
  ),
  CardDesignModel(
    designImage: 'assets/card_design/linear.png',
    designName: 'Linear',
  )
];