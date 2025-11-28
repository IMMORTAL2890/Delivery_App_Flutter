// menu_model.dart

class MenuModel {
  final int? menuId;
  final String? name;
  final String? desc;
  final String? asap;
  final String? lt;
  final String? fo;
  final List<Category>? catList;
  final List<ImageRepository>? imageRepository;

  MenuModel({
    this.menuId,
    this.name,
    this.desc,
    this.asap,
    this.lt,
    this.fo,
    this.catList,
    this.imageRepository,
  });

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
      menuId: json['MenuId'] as int?,
      name: json['Name'] as String?,
      desc: json['Desc'] as String?,
      asap: json['ASAP'] as String?,
      lt: json['LT'] as String?,
      fo: json['FO'] as String?,
      catList: json['catList'] != null
          ? (json['catList'] as List)
              .map((cat) => Category.fromJson(cat))
              .toList()
          : null,
      imageRepository: json['imageRepository'] != null
          ? (json['imageRepository'] as List)
              .map((img) => ImageRepository.fromJson(img))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'MenuId': menuId,
      'Name': name,
      'Desc': desc,
      'ASAP': asap,
      'LT': lt,
      'FO': fo,
      'catList': catList?.map((cat) => cat.toJson()).toList(),
      'imageRepository': imageRepository?.map((img) => img.toJson()).toList(),
    };
  }
}

class Category {
  final int? catId;
  final String? catName;
  final String? desc;
  final PriceLevel? p1;
  final PriceLevel? p2;
  final PriceLevel? p3;
  final PriceLevel? p4;
  final PriceLevel? p5;
  final PriceLevel? p6;
  final String? catType;
  final String? isShowItemImages;
  final List<MenuItem>? itemList;

  Category({
    this.catId,
    this.catName,
    this.desc,
    this.p1,
    this.p2,
    this.p3,
    this.p4,
    this.p5,
    this.p6,
    this.catType,
    this.isShowItemImages,
    this.itemList,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      catId: json['CatId'] as int?,
      catName: json['CatName'] as String?,
      desc: json['Desc'] as String?,
      p1: json['P1'] != null ? PriceLevel.fromJson(json['P1']) : null,
      p2: json['P2'] != null ? PriceLevel.fromJson(json['P2']) : null,
      p3: json['P3'] != null ? PriceLevel.fromJson(json['P3']) : null,
      p4: json['P4'] != null ? PriceLevel.fromJson(json['P4']) : null,
      p5: json['P5'] != null ? PriceLevel.fromJson(json['P5']) : null,
      p6: json['P6'] != null ? PriceLevel.fromJson(json['P6']) : null,
      catType: json['CatType'] as String?,
      isShowItemImages: json['isShowItemImages'] as String?,
      itemList: json['ItemList'] != null
          ? (json['ItemList'] as List)
              .map((item) => MenuItem.fromJson(item))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'CatId': catId,
      'CatName': catName,
      'Desc': desc,
      'P1': p1?.toJson(),
      'P2': p2?.toJson(),
      'P3': p3?.toJson(),
      'P4': p4?.toJson(),
      'P5': p5?.toJson(),
      'P6': p6?.toJson(),
      'CatType': catType,
      'isShowItemImages': isShowItemImages,
      'ItemList': itemList?.map((item) => item.toJson()).toList(),
    };
  }
}

class PriceLevel {
  final int? id;
  final String? name;

  PriceLevel({this.id, this.name});

  factory PriceLevel.fromJson(Map<String, dynamic> json) {
    return PriceLevel(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Name': name,
    };
  }
}

class MenuItem {
  final int? id;
  final String? name;
  final String? desc;
  final int? minQ;
  final int? maxQ;
  final double? minP;
  final double? maxP;
  final double? p1;
  final double? p2;
  final double? p3;
  final double? p4;
  final double? p5;
  final double? p6;
  final String? img;
  final String? status;
  final String? icon1;
  final String? icon2;
  final String? icon3;
  final String? icon4;
  final String? isOnSale;
  final String? isShowforSuggestion;
  final String? isOutOfStock;
  final String? itemOOSFromDateTime;
  final String? itemOOSToDateTime;
  final String? availableServices;
  final String? posItemId;
  final OpenOn? openOn;
  final dynamic specialOffer;
  final List<AddOn>? addOnList;
  final List<dynamic>? itemModList;

  MenuItem({
    this.id,
    this.name,
    this.desc,
    this.minQ,
    this.maxQ,
    this.minP,
    this.maxP,
    this.p1,
    this.p2,
    this.p3,
    this.p4,
    this.p5,
    this.p6,
    this.img,
    this.status,
    this.icon1,
    this.icon2,
    this.icon3,
    this.icon4,
    this.isOnSale,
    this.isShowforSuggestion,
    this.isOutOfStock,
    this.itemOOSFromDateTime,
    this.itemOOSToDateTime,
    this.availableServices,
    this.posItemId,
    this.openOn,
    this.specialOffer,
    this.addOnList,
    this.itemModList,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      desc: json['Desc'] as String?,
      minQ: json['MinQ'] as int?,
      maxQ: json['MaxQ'] as int?,
      minP: (json['MinP'] as num?)?.toDouble(),
      maxP: (json['MaxP'] as num?)?.toDouble(),
      p1: (json['P1'] as num?)?.toDouble(),
      p2: (json['P2'] as num?)?.toDouble(),
      p3: (json['P3'] as num?)?.toDouble(),
      p4: (json['P4'] as num?)?.toDouble(),
      p5: (json['P5'] as num?)?.toDouble(),
      p6: (json['P6'] as num?)?.toDouble(),
      img: json['Img'] as String?,
      status: json['Status'] as String?,
      icon1: json['Icon1'] as String?,
      icon2: json['Icon2'] as String?,
      icon3: json['Icon3'] as String?,
      icon4: json['Icon4'] as String?,
      isOnSale: json['isOnSale'] as String?,
      isShowforSuggestion: json['isShowforSuggestion'] as String?,
      isOutOfStock: json['isOutOfStock'] as String?,
      itemOOSFromDateTime: json['ItemOOSFromDateTime'] as String?,
      itemOOSToDateTime: json['ItemOOSToDateTime'] as String?,
      availableServices: json['availableServices'] as String?,
      posItemId: json['POSItemId'] as String?,
      openOn: json['OpenOn'] != null ? OpenOn.fromJson(json['OpenOn']) : null,
      specialOffer: json['SpecialOffer'],
      addOnList: json['AddOnList'] != null
          ? (json['AddOnList'] as List)
              .map((addon) => AddOn.fromJson(addon))
              .toList()
          : null,
      itemModList: json['ItemModList'] as List?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Name': name,
      'Desc': desc,
      'MinQ': minQ,
      'MaxQ': maxQ,
      'MinP': minP,
      'MaxP': maxP,
      'P1': p1,
      'P2': p2,
      'P3': p3,
      'P4': p4,
      'P5': p5,
      'P6': p6,
      'Img': img,
      'Status': status,
      'Icon1': icon1,
      'Icon2': icon2,
      'Icon3': icon3,
      'Icon4': icon4,
      'isOnSale': isOnSale,
      'isShowforSuggestion': isShowforSuggestion,
      'isOutOfStock': isOutOfStock,
      'ItemOOSFromDateTime': itemOOSFromDateTime,
      'ItemOOSToDateTime': itemOOSToDateTime,
      'availableServices': availableServices,
      'POSItemId': posItemId,
      'OpenOn': openOn?.toJson(),
      'SpecialOffer': specialOffer,
      'AddOnList': addOnList?.map((addon) => addon.toJson()).toList(),
      'ItemModList': itemModList,
    };
  }
}

class OpenOn {
  final String? mon;
  final String? tue;
  final String? wed;
  final String? thu;
  final String? fri;
  final String? sat;
  final String? sun;

  OpenOn({
    this.mon,
    this.tue,
    this.wed,
    this.thu,
    this.fri,
    this.sat,
    this.sun,
  });

  factory OpenOn.fromJson(Map<String, dynamic> json) {
    return OpenOn(
      mon: json['Mon'] as String?,
      tue: json['Tue'] as String?,
      wed: json['Wed'] as String?,
      thu: json['Thu'] as String?,
      fri: json['Fri'] as String?,
      sat: json['Sat'] as String?,
      sun: json['Sun'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Mon': mon,
      'Tue': tue,
      'Wed': wed,
      'Thu': thu,
      'Fri': fri,
      'Sat': sat,
      'Sun': sun,
    };
  }
}

class AddOn {
  final int? id;
  final int? itemAddOnId;
  final String? name;
  final String? desc;
  final String? dispType;
  final String? reqd;
  final int? min;
  final int? max;
  final String? dsplyPrice;
  final List<AddOnOption>? addOnOptions;
  final dynamic addOnOptionModifier1;
  final dynamic addOnOptionModifier2;
  final String? menuAddOnImage;
  final bool? isSuggestiveCheck;

  AddOn({
    this.id,
    this.itemAddOnId,
    this.name,
    this.desc,
    this.dispType,
    this.reqd,
    this.min,
    this.max,
    this.dsplyPrice,
    this.addOnOptions,
    this.addOnOptionModifier1,
    this.addOnOptionModifier2,
    this.menuAddOnImage,
    this.isSuggestiveCheck,
  });

  factory AddOn.fromJson(Map<String, dynamic> json) {
    return AddOn(
      id: json['Id'] as int?,
      itemAddOnId: json['ItemAddOnId'] as int?,
      name: json['Name'] as String?,
      desc: json['Desc'] as String?,
      dispType: json['DispType'] as String?,
      reqd: json['Reqd'] as String?,
      min: json['Min'] as int?,
      max: json['Max'] as int?,
      dsplyPrice: json['DsplyPrice'] as String?,
      addOnOptions: json['AddOnOptions'] != null
          ? (json['AddOnOptions'] as List)
              .map((option) => AddOnOption.fromJson(option))
              .toList()
          : null,
      addOnOptionModifier1: json['AddOnOptionModifier1'],
      addOnOptionModifier2: json['AddOnOptionModifier2'],
      menuAddOnImage: json['MenuAddOnImage'] as String?,
      isSuggestiveCheck: json['IsSuggestiveCheck'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'ItemAddOnId': itemAddOnId,
      'Name': name,
      'Desc': desc,
      'DispType': dispType,
      'Reqd': reqd,
      'Min': min,
      'Max': max,
      'DsplyPrice': dsplyPrice,
      'AddOnOptions': addOnOptions?.map((option) => option.toJson()).toList(),
      'AddOnOptionModifier1': addOnOptionModifier1,
      'AddOnOptionModifier2': addOnOptionModifier2,
      'MenuAddOnImage': menuAddOnImage,
      'IsSuggestiveCheck': isSuggestiveCheck,
    };
  }
}

class AddOnOption {
  final int? id;
  final String? name;
  final double? p1;
  final double? p2;
  final double? p3;
  final double? p4;
  final double? p5;
  final double? p6;
  final int? menuItemOutOfStockId;
  final String? isAddonOptionOutOfStock;
  final String? addonOptionOOSFromDateTime;
  final String? addonOptionOOSToDateTime;
  final String? dflt;
  final String? menuAddonOptionImage;

  AddOnOption({
    this.id,
    this.name,
    this.p1,
    this.p2,
    this.p3,
    this.p4,
    this.p5,
    this.p6,
    this.menuItemOutOfStockId,
    this.isAddonOptionOutOfStock,
    this.addonOptionOOSFromDateTime,
    this.addonOptionOOSToDateTime,
    this.dflt,
    this.menuAddonOptionImage,
  });

  factory AddOnOption.fromJson(Map<String, dynamic> json) {
    return AddOnOption(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      p1: (json['P1'] as num?)?.toDouble(),
      p2: (json['P2'] as num?)?.toDouble(),
      p3: (json['P3'] as num?)?.toDouble(),
      p4: (json['P4'] as num?)?.toDouble(),
      p5: (json['P5'] as num?)?.toDouble(),
      p6: (json['P6'] as num?)?.toDouble(),
      menuItemOutOfStockId: json['MenuItemOutOfStockId'] as int?,
      isAddonOptionOutOfStock: json['isAddonOptionOutOfStock'] as String?,
      addonOptionOOSFromDateTime: json['AddonOptionOOSFromDateTime'] as String?,
      addonOptionOOSToDateTime: json['AddonOptionOOSToDateTime'] as String?,
      dflt: json['Dflt'] as String?,
      menuAddonOptionImage: json['MenuAddonOptionImage'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Name': name,
      'P1': p1,
      'P2': p2,
      'P3': p3,
      'P4': p4,
      'P5': p5,
      'P6': p6,
      'MenuItemOutOfStockId': menuItemOutOfStockId,
      'isAddonOptionOutOfStock': isAddonOptionOutOfStock,
      'AddonOptionOOSFromDateTime': addonOptionOOSFromDateTime,
      'AddonOptionOOSToDateTime': addonOptionOOSToDateTime,
      'Dflt': dflt,
      'MenuAddonOptionImage': menuAddonOptionImage,
    };
  }
}

class ImageRepository {
  final String? posItemId;
  final String? posItemImage;
  final String? itemDesc;

  ImageRepository({
    this.posItemId,
    this.posItemImage,
    this.itemDesc,
  });

  factory ImageRepository.fromJson(Map<String, dynamic> json) {
    return ImageRepository(
      posItemId: json['POSItemId'] as String?,
      posItemImage: json['POSItemImage'] as String?,
      itemDesc: json['ItemDesc'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'POSItemId': posItemId,
      'POSItemImage': posItemImage,
      'ItemDesc': itemDesc,
    };
  }
  
  // Helper method to get full image URL
  String? getImageUrl({String baseUrl = 'https://yourdomain.com/images/'}) {
    if (posItemImage != null && posItemImage!.isNotEmpty) {
      return '$baseUrl$posItemImage';
    }
    return null;
  }
}