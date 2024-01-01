import 'package:flutter/material.dart';
import 'package:flet/modules/illustration.dart';

class NewsItem extends StatelessWidget {
  final Map<String, String> item;
  const NewsItem({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Color itemColor = Color.fromRGBO(43,43,43,1);
    return Container(
      margin: const EdgeInsets.only(top: 5),

      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        color: itemColor,
        child: Container(
          padding: const EdgeInsets.all(10),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(child: Text(item["title"]!, overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color: Colors.white),),),
                Row(
                  children: [
                    Container(
                      width:20.0,
                      height: 20.0,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(item["mediaLogo"]!),
                          //从Assets加载图片
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      item["media"]!,
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.grey),
                    )
                  ],
                ),
                Expanded(child: Text(item["title"]!,textAlign: TextAlign.justify,maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.white),),),
              ],
              ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(item["image"]!),
                    //从Assets加载图片
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle, // <-- 这里需要设置为 rectangle
                  borderRadius: new BorderRadius.all(
                    const Radius.circular(
                        6.0), // <-- rectangle 时，BorderRadius 才有效
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
