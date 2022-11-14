
Stream<int> boatStream() async*{
  for(int i = 0;i<10;i++){
    print("Sent boat no. " + i.toString());
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

void main(){
  Stream<int> stream = boatStream();
  stream.listen((event) {
    print("Received boat no. " + event.toString());
  });
}