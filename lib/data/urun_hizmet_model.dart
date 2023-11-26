class UrunHizmetModel {
  String baslik;
  String altbaslikBirim;
  String altbaslikFiyat;
  String ustText;
  String altText;
  String ustTextFiyat;
  String altTextFiyat;
  String sagTextFiyat;
  String araToplamFiyat;
  String sagText;

  UrunHizmetModel({
    required this.baslik,
    required this.altbaslikBirim,
    required this.altbaslikFiyat,
    required this.ustText,
    required this.altText,
    required this.ustTextFiyat,
    required this.altTextFiyat,
    required this.sagTextFiyat,
    required this.araToplamFiyat,
    required this.sagText,
  });

  @override
  String toString() {
    return "UrunHizmetModel(baslik: $baslik, altbaslikBirim: $altbaslikBirim, altbaslikFiyat: $altbaslikFiyat, ustText: $ustText, altText: $altText, ustTextFiyat: $ustTextFiyat, altTextFiyat: $altTextFiyat, sagTextFiyat: $sagTextFiyat, araToplamFiyat: $araToplamFiyat, sagText: $sagText)";
  }
}
