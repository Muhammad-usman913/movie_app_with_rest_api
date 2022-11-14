class ProductsModel {
  ProductsModel({
      bool? success, 
      String? message, 
      List<Data>? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  ProductsModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  String? _message;
  List<Data>? _data;
ProductsModel copyWith({  bool? success,
  String? message,
  List<Data>? data,
}) => ProductsModel(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      String? id, 
      bool? isActive, 
      String? createdAt, 
      String? name, 
      String? description, 
      String? shopemail, 
      String? shopaddress, 
      String? shopcity, 
      String? userid, 
      String? image, 
      int? v, 
      List<Products>? products,}){
    _id = id;
    _isActive = isActive;
    _createdAt = createdAt;
    _name = name;
    _description = description;
    _shopemail = shopemail;
    _shopaddress = shopaddress;
    _shopcity = shopcity;
    _userid = userid;
    _image = image;
    _v = v;
    _products = products;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _name = json['name'];
    _description = json['description'];
    _shopemail = json['shopemail'];
    _shopaddress = json['shopaddress'];
    _shopcity = json['shopcity'];
    _userid = json['userid'];
    _image = json['image'];
    _v = json['__v'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
  }
  String? _id;
  bool? _isActive;
  String? _createdAt;
  String? _name;
  String? _description;
  String? _shopemail;
  String? _shopaddress;
  String? _shopcity;
  String? _userid;
  String? _image;
  int? _v;
  List<Products>? _products;
Data copyWith({  String? id,
  bool? isActive,
  String? createdAt,
  String? name,
  String? description,
  String? shopemail,
  String? shopaddress,
  String? shopcity,
  String? userid,
  String? image,
  int? v,
  List<Products>? products,
}) => Data(  id: id ?? _id,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  name: name ?? _name,
  description: description ?? _description,
  shopemail: shopemail ?? _shopemail,
  shopaddress: shopaddress ?? _shopaddress,
  shopcity: shopcity ?? _shopcity,
  userid: userid ?? _userid,
  image: image ?? _image,
  v: v ?? _v,
  products: products ?? _products,
);
  String? get id => _id;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get description => _description;
  String? get shopemail => _shopemail;
  String? get shopaddress => _shopaddress;
  String? get shopcity => _shopcity;
  String? get userid => _userid;
  String? get image => _image;
  int? get v => _v;
  List<Products>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['name'] = _name;
    map['description'] = _description;
    map['shopemail'] = _shopemail;
    map['shopaddress'] = _shopaddress;
    map['shopcity'] = _shopcity;
    map['userid'] = _userid;
    map['image'] = _image;
    map['__v'] = _v;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Products {
  Products({
      String? id, 
      bool? onSale, 
      int? salePercent, 
      int? sold, 
      bool? sliderNew, 
      bool? sliderRecent, 
      bool? sliderSold, 
      String? date, 
      String? title, 
      String? categories, 
      String? subcate, 
      String? shop, 
      String? price, 
      String? saleTitle, 
      String? salePrice, 
      String? description, 
      String? colors, 
      String? size, 
      List<Images>? images, 
      int? v, 
      bool? inWishlist,}){
    _id = id;
    _onSale = onSale;
    _salePercent = salePercent;
    _sold = sold;
    _sliderNew = sliderNew;
    _sliderRecent = sliderRecent;
    _sliderSold = sliderSold;
    _date = date;
    _title = title;
    _categories = categories;
    _subcate = subcate;
    _shop = shop;
    _price = price;
    _saleTitle = saleTitle;
    _salePrice = salePrice;
    _description = description;
    _colors = colors;
    _size = size;
    _images = images;
    _v = v;
    _inWishlist = inWishlist;
}

  Products.fromJson(dynamic json) {
    _id = json['_id'];
    _onSale = json['on_sale'];
    _salePercent = json['sale_percent'];
    _sold = json['sold'];
    _sliderNew = json['slider_new'];
    _sliderRecent = json['slider_recent'];
    _sliderSold = json['slider_sold'];
    _date = json['date'];
    _title = json['title'];
    _categories = json['categories'];
    _subcate = json['subcate'];
    _shop = json['shop'];
    _price = json['price'];
    _saleTitle = json['sale_title'];
    _salePrice = json['sale_price'];
    _description = json['description'];
    _colors = json['colors'];
    _size = json['size'];
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
    _v = json['__v'];
    _inWishlist = json['in_wishlist'];
  }
  String? _id;
  bool? _onSale;
  int? _salePercent;
  int? _sold;
  bool? _sliderNew;
  bool? _sliderRecent;
  bool? _sliderSold;
  String? _date;
  String? _title;
  String? _categories;
  String? _subcate;
  String? _shop;
  String? _price;
  String? _saleTitle;
  String? _salePrice;
  String? _description;
  String? _colors;
  String? _size;
  List<Images>? _images;
  int? _v;
  bool? _inWishlist;
Products copyWith({  String? id,
  bool? onSale,
  int? salePercent,
  int? sold,
  bool? sliderNew,
  bool? sliderRecent,
  bool? sliderSold,
  String? date,
  String? title,
  String? categories,
  String? subcate,
  String? shop,
  String? price,
  String? saleTitle,
  String? salePrice,
  String? description,
  String? colors,
  String? size,
  List<Images>? images,
  int? v,
  bool? inWishlist,
}) => Products(  id: id ?? _id,
  onSale: onSale ?? _onSale,
  salePercent: salePercent ?? _salePercent,
  sold: sold ?? _sold,
  sliderNew: sliderNew ?? _sliderNew,
  sliderRecent: sliderRecent ?? _sliderRecent,
  sliderSold: sliderSold ?? _sliderSold,
  date: date ?? _date,
  title: title ?? _title,
  categories: categories ?? _categories,
  subcate: subcate ?? _subcate,
  shop: shop ?? _shop,
  price: price ?? _price,
  saleTitle: saleTitle ?? _saleTitle,
  salePrice: salePrice ?? _salePrice,
  description: description ?? _description,
  colors: colors ?? _colors,
  size: size ?? _size,
  images: images ?? _images,
  v: v ?? _v,
  inWishlist: inWishlist ?? _inWishlist,
);
  String? get id => _id;
  bool? get onSale => _onSale;
  int? get salePercent => _salePercent;
  int? get sold => _sold;
  bool? get sliderNew => _sliderNew;
  bool? get sliderRecent => _sliderRecent;
  bool? get sliderSold => _sliderSold;
  String? get date => _date;
  String? get title => _title;
  String? get categories => _categories;
  String? get subcate => _subcate;
  String? get shop => _shop;
  String? get price => _price;
  String? get saleTitle => _saleTitle;
  String? get salePrice => _salePrice;
  String? get description => _description;
  String? get colors => _colors;
  String? get size => _size;
  List<Images>? get images => _images;
  int? get v => _v;
  bool? get inWishlist => _inWishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['on_sale'] = _onSale;
    map['sale_percent'] = _salePercent;
    map['sold'] = _sold;
    map['slider_new'] = _sliderNew;
    map['slider_recent'] = _sliderRecent;
    map['slider_sold'] = _sliderSold;
    map['date'] = _date;
    map['title'] = _title;
    map['categories'] = _categories;
    map['subcate'] = _subcate;
    map['shop'] = _shop;
    map['price'] = _price;
    map['sale_title'] = _saleTitle;
    map['sale_price'] = _salePrice;
    map['description'] = _description;
    map['colors'] = _colors;
    map['size'] = _size;
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    map['__v'] = _v;
    map['in_wishlist'] = _inWishlist;
    return map;
  }

}

class Images {
  Images({
      String? id, 
      String? filename, 
      String? url,}){
    _id = id;
    _filename = filename;
    _url = url;
}

  Images.fromJson(dynamic json) {
    _id = json['_id'];
    _filename = json['filename'];
    _url = json['url'];
  }
  String? _id;
  String? _filename;
  String? _url;
Images copyWith({  String? id,
  String? filename,
  String? url,
}) => Images(  id: id ?? _id,
  filename: filename ?? _filename,
  url: url ?? _url,
);
  String? get id => _id;
  String? get filename => _filename;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['filename'] = _filename;
    map['url'] = _url;
    return map;
  }

}