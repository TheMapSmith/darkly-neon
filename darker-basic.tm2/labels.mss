// Highway shield
#road_label[class='motorway'][zoom>=8][reflen>=1][reflen<=11],
#road_label[class='main'][zoom>=8][reflen>=1][reflen<=11] {
  shield-name: "[ref]";
  shield-file: url("img/motorway_[reflen]x1.svg");
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: #fff;
  shield-spacing: 300;
  shield-avoid-edges: true;
  shield-min-padding: 10;
  shield-min-distance: 40;
  [zoom>=12] { shield-min-distance: 80; }
  [zoom>=15] {
    shield-spacing: 400;
    shield-size: 11;
    shield-file: url("img/motorway_[reflen]x1.svg");
  }
}

#road_label { 
  ::case[zoom>=6]{
    [class='main'][name=~'^((?!Frontage).)*$'] { //this regex is for eliminating "frontage" labels 
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
      one/text-fill: @road_med * 1.5;
      one/text-size: (@max - @drk) + 3;
      one/text-avoid-edges: true;
      one/text-halo-radius: 1;
      one/text-halo-fill: @road_drkst * 1.5;
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