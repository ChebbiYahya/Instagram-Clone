class PostModel {
  String name;
  String profilImg;
  String postImg;
  String titleComment;
  String descrComment;

  PostModel({
    required this.name,
    required this.profilImg,
    required this.postImg,
    required this.titleComment,
    required this.descrComment,
  });
}

List<PostModel> listPost = [
  PostModel(
    name: "Emilie_ski",
    profilImg: "assets/1.jpg",
    postImg: "assets/poste_1.jpg",
    titleComment: "Alex_rein",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
  PostModel(
    name: "Rex_drg",
    profilImg: "assets/2.jpg",
    postImg: "assets/poste_2.jpg",
    titleComment: "Sam_zx",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
  PostModel(
    name: "Rita_sgh",
    profilImg: "assets/3.jpg",
    postImg: "assets/poste_3.jpg",
    titleComment: "Hams_rein",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
  PostModel(
    name: "Alex_ch",
    profilImg: "assets/4.jpg",
    postImg: "assets/poste_4.jpg",
    titleComment: "Suzan_rein",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
  PostModel(
    name: "Sam_x",
    profilImg: "assets/5.jpg",
    postImg: "assets/poste_5.jpg",
    titleComment: "Red_rein",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
  PostModel(
    name: "Emilie_ski",
    profilImg: "assets/1.jpg",
    postImg: "assets/poste_6.jpg",
    titleComment: "Debi_rein",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
  PostModel(
    name: "Rita_sgh",
    profilImg: "assets/3.jpg",
    postImg: "assets/poste_1.jpg",
    titleComment: "Rania_rein",
    descrComment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ),
];
