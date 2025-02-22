extension StringExtention on String {
  String getInitials() =>
      isNotEmpty ? trim().split(' ').map((l) => l[0]).take(2).join() : '';

  String toCapitalize() {
    return isNotEmpty
        ? trim()
            .split(' ')
            .map((l) => '${l[0].toUpperCase()}${l.substring(1).toLowerCase()}')
            .join(' ')
        : '';
  }

  String toCapitalFirst() {
    return isNotEmpty
        ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}'
        : '';
  }
}
