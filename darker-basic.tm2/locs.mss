#poi_label[zoom>=18] {
  ::icon[maki!=null] {
    marker-fill:@road_bright;
    marker-file:url('icon/[maki]-18.svg');
  }
  ::label {
    text-name: @name;
    text-face-name: @sans_med;
    text-size: 13;
    text-fill: @road_bright;
    text-halo-fill: fadeout(@road_drkst, 80%);
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-wrap-width: 30;
    text-line-spacing:  -5;
    text-align: center;
    text-placement-type: simple;
    text-placements: "S,SW,SE,E,W,SSW,SSE,N";
    text-transform: lowercase;
    text-character-spacing: 0.25;
    [maki!=null] { text-dy: 14; }
  }
}


/////////// Old POI
/*
#poi_label {
  [maki='restaurant'] {
    marker-file: url("src/restaurant-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;
    }
  [maki='bar'] {
    marker-file: url("src/bar-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;    
    }
  [maki='lodging'] {
    marker-file: url("src/lodging-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;        
    }
  [maki='cafe'] {
    marker-file: url("src/cafe-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;        
    }
  [maki='beer'] {
    marker-file: url("src/beer-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;            
    }
  [maki='grocery'] {
    marker-file: url("src/grocery-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;            
    }
  [maki='place-of-worship'] {
    marker-file: url("src/place-of-worship-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;            
    }
  [maki='hospital'] {
    marker-file: url("src/hospital-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;            
    }
  [maki='library'] {
    marker-file: url("src/library-18.svg");
    marker-height: 18;
    marker-fill: @road_bright;
    marker-line-color: @road_drkst;
    marker-line-width: 2;            
    }  
  } */