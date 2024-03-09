
enum Fromwho [me, hers];
class Message{
  final String text;
  final String? imageURL;
  final Fromwho fromWhile;

}

Message({required: this.text, this.imageURL, required: this.Fromwho})

}