#poi_label[zoom>=18] {
  ::icon[maki!=null] {
    [name!='Blind Pig']
      [name!='Parish']
      [name!='Iron Cactus']
      [name!='The Driskill']
      [name!='HandleBar'] {    
      marker-fill:@road_bright;
      marker-file:url('icon/[maki]-18.svg');
      }
  }
  ::label {
    [name!='Blind Pig'],
      [name!='Parish']
      [name!='Iron Cactus']
      [name!='The Driskill']
      [name!='HandleBar'] {        
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
}