/// this is the User global entity
class GlobalUser {
  // identification data
  final int localId;
  final int localAddressId;
  final String publicId;

  // main data
  final String name;
  final DateTime birthDate;
  final String job;
  final String phoneNumber;
  final String email;

  GlobalUser(
    this.localId,
    this.localAddressId,
    this.publicId,
    this.name,
    this.birthDate,
    this.job,
    this.phoneNumber,
    this.email,
  );
}
