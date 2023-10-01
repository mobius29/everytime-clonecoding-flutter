import 'package:everytime_flutter/widgets/home/common/board_frame.dart';
import 'package:everytime_flutter/widgets/home/favorite_board/faborite_board_item.dart';
import 'package:flutter/material.dart';

class FavoriteBoard extends StatelessWidget {
  const FavoriteBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BoardFrame(
      title: "즐겨찾는 게시판",
      child: Column(
        children: [
          FavoriteBoardItem(
            title: "자유게시판",
            post: "대충 뭐 어쩌고 저쩌고 되게 긴 말을 쓰고 싶은데 쓸 말이 없는 그런 느낌 뭔지 알죠?",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "비밀게시판",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "졸업생게시판",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "새내기게시판",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "장터게시판",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "정보게시판",
            post: "대충 뭐 어쩌고 저쩌고 되게 긴 말을 쓰고 싶은데 쓸 말이 없는 그런 느낌 뭔지 알죠?",
          ),
          FavoriteBoardItem(
            title: "홍보게시판",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "과외러 모여라",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "동아리, 학회",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
          FavoriteBoardItem(
            title: "고양이 게시판",
            post: "뭐 어쩌고 저쩌고",
            isNew: false,
          ),
          FavoriteBoardItem(
            title: "자취백서",
            post: "뭐 어쩌고 저쩌고",
            isNew: false,
          ),
          FavoriteBoardItem(
            title: "웃고가게",
            post: "뭐 어쩌고 저쩌고",
            isNew: true,
          ),
        ],
      ),
    );
  }
}
