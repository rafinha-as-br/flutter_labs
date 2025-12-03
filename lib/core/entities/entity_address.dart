/// this is the Global global entity
class GlobalAddress {
  // identification
  final int localId;
  final String publicId;

  // main data
  final String cep; // CEP
  final String street;
  final String number;
  final String neighborhood;
  final String city;
  final String state;

  // optional complement fields
  final String? complement;
  final String? reference;

  GlobalAddress(
    this.localId,
    this.publicId,
    this.cep,
    this.street,
    this.number,
    this.neighborhood,
    this.city,
    this.state,
    this.complement,
    this.reference,
  );
}
