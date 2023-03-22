class GetCurrentJsonResp {
  Location? location;
  Current? current;

  GetCurrentJsonResp({this.location, this.current});

  GetCurrentJsonResp.fromJson(Map<String, dynamic> json) {
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    current =
        json['current'] != null ? Current.fromJson(json['current']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.location != null) {
      data['location'] = this.location?.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current?.toJson();
    }
    return data;
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  Location(
      {this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tzId,
      this.localtimeEpoch,
      this.localtime});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    region = json['region'];
    country = json['country'];
    lat = json['lat'];
    lon = json['lon'];
    tzId = json['tz_id'];
    localtimeEpoch = json['localtime_epoch'];
    localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.region != null) {
      data['region'] = this.region;
    }
    if (this.country != null) {
      data['country'] = this.country;
    }
    if (this.lat != null) {
      data['lat'] = this.lat;
    }
    if (this.lon != null) {
      data['lon'] = this.lon;
    }
    if (this.tzId != null) {
      data['tz_id'] = this.tzId;
    }
    if (this.localtimeEpoch != null) {
      data['localtime_epoch'] = this.localtimeEpoch;
    }
    if (this.localtime != null) {
      data['localtime'] = this.localtime;
    }
    return data;
  }
}

class Current {
  int? lastUpdatedEpoch;
  String? lastUpdated;
  int? tempC;
  int? tempF;
  int? isDay;
  Condition? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  int? pressureMb;
  double? pressureIn;
  int? precipMm;
  int? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  int? feelslikeF;
  double? visKm;
  int? visMiles;
  int? uv;
  double? gustMph;
  int? gustKph;

  Current(
      {this.lastUpdatedEpoch,
      this.lastUpdated,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.visKm,
      this.visMiles,
      this.uv,
      this.gustMph,
      this.gustKph});

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdatedEpoch = json['last_updated_epoch'];
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    tempF = json['temp_f'];
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'];
    windKph = json['wind_kph'];
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'];
    pressureIn = json['pressure_in'];
    precipMm = json['precip_mm'];
    precipIn = json['precip_in'];
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'];
    feelslikeF = json['feelslike_f'];
    visKm = json['vis_km'];
    visMiles = json['vis_miles'];
    uv = json['uv'];
    gustMph = json['gust_mph'];
    gustKph = json['gust_kph'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.lastUpdatedEpoch != null) {
      data['last_updated_epoch'] = this.lastUpdatedEpoch;
    }
    if (this.lastUpdated != null) {
      data['last_updated'] = this.lastUpdated;
    }
    if (this.tempC != null) {
      data['temp_c'] = this.tempC;
    }
    if (this.tempF != null) {
      data['temp_f'] = this.tempF;
    }
    if (this.isDay != null) {
      data['is_day'] = this.isDay;
    }
    if (this.condition != null) {
      data['condition'] = this.condition?.toJson();
    }
    if (this.windMph != null) {
      data['wind_mph'] = this.windMph;
    }
    if (this.windKph != null) {
      data['wind_kph'] = this.windKph;
    }
    if (this.windDegree != null) {
      data['wind_degree'] = this.windDegree;
    }
    if (this.windDir != null) {
      data['wind_dir'] = this.windDir;
    }
    if (this.pressureMb != null) {
      data['pressure_mb'] = this.pressureMb;
    }
    if (this.pressureIn != null) {
      data['pressure_in'] = this.pressureIn;
    }
    if (this.precipMm != null) {
      data['precip_mm'] = this.precipMm;
    }
    if (this.precipIn != null) {
      data['precip_in'] = this.precipIn;
    }
    if (this.humidity != null) {
      data['humidity'] = this.humidity;
    }
    if (this.cloud != null) {
      data['cloud'] = this.cloud;
    }
    if (this.feelslikeC != null) {
      data['feelslike_c'] = this.feelslikeC;
    }
    if (this.feelslikeF != null) {
      data['feelslike_f'] = this.feelslikeF;
    }
    if (this.visKm != null) {
      data['vis_km'] = this.visKm;
    }
    if (this.visMiles != null) {
      data['vis_miles'] = this.visMiles;
    }
    if (this.uv != null) {
      data['uv'] = this.uv;
    }
    if (this.gustMph != null) {
      data['gust_mph'] = this.gustMph;
    }
    if (this.gustKph != null) {
      data['gust_kph'] = this.gustKph;
    }
    return data;
  }
}

class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.text != null) {
      data['text'] = this.text;
    }
    if (this.icon != null) {
      data['icon'] = this.icon;
    }
    if (this.code != null) {
      data['code'] = this.code;
    }
    return data;
  }
}
