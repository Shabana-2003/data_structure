selection(List<String> list){
  int n =list.length;
  for(int i=0;i<n-1;i++){
    int minindex=i;
    for(int j=i+1;j<n;j++){
      if(list[j].compareTo(list[minindex])<0){//////
        minindex=j;
      }
    }
    String temp=list[minindex];
    list[minindex]=list[i];
    list[i]=temp;
  }
}
void main(){
  List<String> arr=['c','a','b'];
  selection(arr);
  print(arr);
}