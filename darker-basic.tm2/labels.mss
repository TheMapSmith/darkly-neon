/*#road_label {
  text-name: @name;
  text-placement: line;  // text follows line path
  text-face-name: @sans;
  text-fill: #765;
  text-halo-fill: fadeout(#fff, 50%);
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-size: 12;
  text-avoid-edges: true;  // prevents clipped labels at tile edges
  [zoom>=15] { text-size: 13; }
} */


#road_label { 
  ::case[zoom>=6]{
   [class='motorway'] {
      text-name: @name;
      text-placement: line;
      text-face-name: @sans;      
      text-fill: white;      
      text-size: 13;
      text-avoid-edges: true;
      text-transform:lowercase;
      } 
    [class='motorway_link'][zoom>=13] {

    } 
    [class='main'] {
      one/text-name: @name;
      one/text-placement: line;
      one/text-face-name: @sans_bold;
      one/text-fill: @road_bright;
      one/text-size: (@max - @drk) * 1.5;
      one/text-avoid-edges: true;
      one/text-halo-radius: 2;
      one/text-halo-fill: @road_drk;
      one/text-min-distance: 10000;
      one/text-min-padding: 25;
      one/text-transform:lowercase;
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
      one/text-name: @name;
      one/text-placement: line;
      one/text-face-name: @sans_italic;
      one/text-fill: @road_med;
      one/text-size: (@max - @drk) + 3;
      one/text-avoid-edges: true;
      one/text-halo-radius: 1;
      one/text-halo-fill: @road_drkst;          
      one/text-min-distance: 10000;      
      one/text-min-padding: 25;      
      one/text-transform:lowercase;
      } 
    [class='service'][zoom>=15] {
    
      } 
    [class='path'][zoom>=15] {
    
      } 
    }
  
  // fill/inlines
  ::fill[zoom>=6]['mapnik::geometry_type'=2] {
    [class='motorway'] {
    
      }
    [class='motorway_link'][zoom>=13] {
    
      } 
    [class='main'] {
    
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
    
      }
    [class='service'][zoom>=15] {
    
      } 
    [class='path'][zoom>=15] {
    
    }   
  } 
}