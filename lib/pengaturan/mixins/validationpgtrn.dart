class Validation {
  String validatePassword(String value) {
    if (value.length < 8) {
      return 'Password Minimal 8 Karakter';
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Email tidak valid';
    }
    return null;
  }

  String validateName(String value) {
    if (value.isEmpty) {
      return 'Nama Harus Diisi';
    }
    return null;
  }
   String validateNumber(String value){
    if (value.length <12){
      return 'Nomor anda salah';
    }
    return null;
   }
}