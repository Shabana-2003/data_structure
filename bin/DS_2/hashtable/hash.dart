class HashTable<K, V> {
  final Map<K, V> _table;

  HashTable() : _table = {};

  void put(K key, V value) {
    _table[key] = value;
    
  } 
  void remove(K key) {
    _table.remove(key);
  } 
  void get(K key) {
    print( _table[key]);
  }
}

void main() {
  HashTable<String,int> myHashTable = HashTable<String,int>();

  myHashTable.put("one", 5);
  myHashTable.put("two", 2);
  myHashTable.put("three", 3);
  myHashTable.remove("two");// Output: null
print(myHashTable._table);
  myHashTable.get('one');
}
