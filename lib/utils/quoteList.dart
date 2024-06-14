
class CatModel {
  String? quote;
  String? author;
  String? cat;

  List <CatModel> quoteModelList = [];
  CatModel({this.author,this.quote,this.cat});

  factory CatModel.fromquote(Map m1)
  {
    return CatModel(quote: m1['quote'],author: m1['author'],cat: m1['cat']);
  }
  CatModel.toList(List l1)
  {
    for(int i = 0; i<l1.length; i++)
    {
      quoteModelList.add(CatModel.fromquote(l1[i]));
    }
  }
}