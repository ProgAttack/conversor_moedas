class currencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoins;

  currencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoins,
  });

  static List<currencyModel> getCurrency() {
    return <currencyModel>[
      currencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoins: 0.0005),
      currencyModel(
          name: 'Dolar', real: 5.5, dolar: 1.0, euro: 0.85, bitcoins: 0.00088),
      currencyModel(
          name: 'Euro', real: 6.5, dolar: 0.18, euro: 1.0, bitcoins: 0.00010),
      currencyModel(
          name: 'Bitcoins',
          real: 64558.1,
          dolar: 15452.2,
          euro: 9985.52,
          bitcoins: 1.0),
    ];
  }
}
