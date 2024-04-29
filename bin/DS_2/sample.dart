void main(){
  B obj =B();
  obj.aa(); 
  a.vari;
  a.aa();
}
class a{
static int vari=10;
 static void aa(){
 print("vv");
  }
}
class B extends a{
  void aa(){
    print("ssssssssss");
  }
}