

class Cast {

  List<Actor> actores = List();

  Cast.fromJsonList( List<dynamic> jsonList ) {

    if ( jsonList == null ) return;

    jsonList.forEach((item) { 
      
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);

    });

  }

}

class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });

  Actor.fromJsonMap( Map<String, dynamic> json ) {

    this.castId = json['cast_id'];
    this.character  = json['character'];
    this.creditId = json['credit_id'];
    this.gender = json['gender'];
    this.id = json['id'];
    this.name = json['name'];
    this.order  = json['order'];
    this.profilePath  = json['profile_path'];

  }

  getFoto() {

    if(profilePath == null) {
      return 'https://cdn11.bigcommerce.com/s-7i4g8cpydv/stencil/fb578d50-303a-0138-4ab9-0242ac11000d/e/b3937c20-7796-0138-7962-0242ac11000a/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  
  }

}

