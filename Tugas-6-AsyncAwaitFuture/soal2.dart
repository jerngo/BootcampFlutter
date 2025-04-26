void main(List<String> args) {
  print('Life');
  
  Future.delayed(Duration(milliseconds: 100), () {
    print('is');
  });
  
  Future.delayed(Duration(milliseconds: 200), () {
    print('never flat');
  });
}