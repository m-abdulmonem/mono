import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../custom_widgets.dart';

class CustomPostBlock extends StatelessWidget {
  final String img, title, category, status;
  final int price;
  const CustomPostBlock({
    this.img = "room.jpg",
    this.title = "Design of children’s room for 2 children",
    this.category = "Interior design",
    this.price = 256,
    this.status = "book",
    Key? key,
  }) : super(key: key);

  Widget _buildPostImg() {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: AssetImage("assets/images/$img")),
          ),
          height: 200,
        ),
        Positioned(
          top: 15,
          left: 15,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.4),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const Icon(
              CupertinoIcons.heart,
              color: colorPrimary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPostHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title,
          fontWeight: FontWeight.w400,
        ),
        CustomText(
          "$price EG",
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: colorPrimary,
        )
      ],
    );
  }

  Widget _buildAuthor() {
    return Row(
      children: const [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          foregroundImage: AssetImage("assets/images/profile.jpg"),
        ),
        HorizontalSpace(15),
        CustomText(
          "Designer / ibrahim",
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
  Color _buildStatusColor() {
    if (status == "cancelled") {
      return const Color(0xffDE3838);
    }
    else if (status == "Finished"){
      return const Color(0xff00A743);
    }
    else if (status == "On hold"){
      return  colorPrimary.withOpacity(.6);
    }
    return colorPrimary;
  }


  Widget _buildPost() {
    return Column(
      children: [
        _buildPostImg(),
        const VerticalSpace(10),
        _buildPostHeader(),
        const VerticalSpace(10),
        CustomText(
          category,
          textAlign: TextAlign.start,
          fontWeight: FontWeight.w400,
          width: Get.width,
        ),
        const VerticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_buildAuthor(), CustomStatusButton(name: status,color: _buildStatusColor(),)],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildPost();
  }
}

class CustomPostInline extends StatefulWidget {
  final String img, title, category, status;
  final int price;

  const CustomPostInline(
      {this.img = "room.jpg",
      this.title = "Design of children’s room for 2 children",
      this.category = "Interior design",
      this.price = 256,
      this.status = "cancelled",
      Key? key})
      : super(key: key);

  @override
  State<CustomPostInline> createState() => _CustomPostInlineState();
}

class _CustomPostInlineState extends State<CustomPostInline> {
  final double height = Get.width / 4;
  final GlobalKey _flexibleTitleKey = GlobalKey();
  Size? _flexibleTitleSize;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getSizeAndPosition());
  }

  getSizeAndPosition() {
    _flexibleTitleSize = _flexibleTitleKey.currentContext?.size;
    setState(() {});
  }

  Widget _buildImage() {
    return Container(
      height: height,
      foregroundDecoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/${widget.img}"))),
    );
  }

  Widget _buildTitle() {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            widget.title,
            lineHeight: 2,
            fontWeight: FontWeight.w400,
          ),
          const VerticalSpace(17),
          CustomText(
            widget.category,
            width: _flexibleTitleSize?.width,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }

  Color _buildStatusColor() {
    if (widget.status == "cancelled") {
      return const Color(0xffDE3838);
    }
    else if (widget.status == "Finished"){
      return const Color(0xff00A743);
    }
    else if (widget.status == "On hold"){
      return  colorPrimary.withOpacity(.6);
    }
    return colorPrimary;
  }

  Widget _buildPrice() {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            "${widget.price} EG",
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: colorPrimary,
          ),
          const VerticalSpace(17),
          CustomStatusButton(
            name: widget.status,
            color: _buildStatusColor(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: Axis.horizontal,
      children: [
        Flexible(flex: 2, child: _buildImage()),
        const HorizontalSpace(10),
        Flexible(flex: 2, child: _buildTitle(), key: _flexibleTitleKey),
        // const HorizontalSpace(5),
        Flexible(flex: 1, child: _buildPrice())
      ],
    );
  }
}
