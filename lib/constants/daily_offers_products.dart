// import 'dart:ui';

class DailyOffersProducts {
  String productImagePath;
  String productName;
  String productDescription;
  String productPriceBeforeDiscount;
  String productPriceAfterDiscount;

  DailyOffersProducts(
      this.productImagePath,
      this.productName,
      this.productDescription,
      this.productPriceBeforeDiscount,
      this.productPriceAfterDiscount);

  static List<DailyOffersProducts> dailyOffers = [
    DailyOffersProducts(
        "assets/images/huawei_matePad_pro_tablet.png",
        "Huawei MatePad Pro Tablet",
        "Huawei MatePad Pro Tablet, 12.6-inch, 256GB, 8GB RAM, Wi-Fi – Olive Green (Pre-order)",
        "30,000,00",
        "25,000,00"),
    DailyOffersProducts(
        "assets/images/apple_watch_series7_GPS.png",
        "Apple Watch Series 7 GPS",
        "Apple Watch Series 7 GPS, Aluminium Case with Sport Band",
        "22,000,00",
        "16,000,00"),
    DailyOffersProducts(
        "assets/images/Samsung_S9_Plus_cover.jpg",
        "Samsung Galaxy S9 Plus Flip Cover",
        "Flip Cover For Samsung Galaxy S9 Plus – Gold",
        "713,00",
        "500,00"
    ),
    DailyOffersProducts(
        "assets/images/apple_watch_series7_GPS.png",
        "Apple Watch Series 7 GPS",
        "Apple Watch Series 7 GPS, Aluminium Case with Sport Band",
        "22,000,00",
        "16,000,00"),
    DailyOffersProducts(
        "assets/images/Samsung_S9_Plus_cover.jpg",
        "Samsung Galaxy S9 Plus Flip Cover",
        "Flip Cover For Samsung Galaxy S9 Plus – Gold",
        "713,00",
        "500,00"),
    DailyOffersProducts(
        "assets/images/huawei_matePad_pro_tablet.png",
        "Huawei MatePad Pro Tablet",
        "Huawei MatePad Pro Tablet, 12.6-inch, 256GB, 8GB RAM, Wi-Fi – Olive Green (Pre-order)",
        "30,000,00",
        "25,000,00"),
  ];
}
