class Item{
  final int id ;
  final String title ;
  final int price ;
  final String image ;
  final String detail;
  final String type ;
   bool like = false ;

  Item({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.detail,
    required this.type,

});

  String toString(){
    return '$id : $title ราคา $price บาท';
  }
}