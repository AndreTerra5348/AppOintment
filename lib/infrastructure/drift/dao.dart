class Dao<T_Model> {
  /// Returns model id
  Future<int> insert(T_Model model) {
    return Future.sync(() => 0);
  }
}

class ClientModel {
  final String name;
  final int id;

  ClientModel(this.name, this.id);
}
