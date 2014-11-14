// Points of Interest

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
  [zoom>=18] {
    shield-spacing: 400;
    shield-size: 16;
    shield-file: url("img/motorway_[reflen]x1.svg");
    shield-transform: scale(1.3,1.3);
    }
}

#road_label { 
  ::case[zoom>=6]{
    [class='main'][name=~'^((?!Frontage).)*$'] { //this regex is for eliminating "frontage" labels 
      text-name: @name;
      text-placement: line;
      text-face-name: @sans_bold;
      text-fill: @road_bright;
      text-avoid-edges: true;
      text-halo-radius: 2;
      text-halo-fill: @road_drk;
      text-min-distance: 10000;
      text-min-padding: 25;
      text-transform:lowercase;
      [zoom>=16] {
        text-size: (@max - @drk) * 1.5;
        }
      [zoom>=18] {
        text-size: (@max - @drkst) * 1.5;
        }        
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
      text-name: @name;
      text-placement: line;
      text-face-name: @sans_italic;
      text-fill: @road_med * 1.5;
      text-avoid-edges: true;
      text-halo-radius: 1;
      text-halo-fill: @road_drkst * 1.5;
      text-min-distance: 10000;      
      text-min-padding: 25;      
      text-transform:lowercase;
      [zoom>=16] {
        text-size: (@max - @drk) + 3;        
        }
      [zoom>=18] {
        text-face-name: @sans_med_italic;        
        text-size: (@max - @drkst) + 6;
        }
      } 
   }
}

// waterway labels

#waterway_label {
  text-name: @name;
  text-face-name: @serif_italic;
  text-fill: @water_drkst;
  text-character-spacing: 7;
  text-placement: line;
  text-avoid-edges: true;
  text-halo-fill: fadeout(@water_bright, @fadeout);  
  text-halo-rasterizer: fast;  
  [class!='river'] {
    [zoom>=16] {
      text-size: 13;    
      text-halo-radius: 3;          
      }
    [zoom>=17] {
      text-size: 15;    
      text-halo-radius: 4;                
      }
    [zoom>=18] {
      text-size: 17;    
      text-halo-radius: 5;                
      }
    }
  [class='river'] {
    [zoom>=16] {
      text-size: 16;    
      text-halo-radius: 4;          
      }
    [zoom>=17] {
      text-size: 18;    
      text-halo-radius: 5;                
      }
    [zoom>=18] {
      text-size: 20;    
      text-halo-radius: 6;                
      }    
    }
  }


// --- places ------------------------------------
#place_label[type='city'][localrank<=2][name!='Austin']{
  text-name: @name;
  text-face-name: @sans_bold;
  text-halo-fill: @road_drk;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 20;
  text-transform:lowercase;
  text-fill: @road_bright;
  [scalerank<=2] {
    text-size: 24;
    text-face-name: @sans_black_italic;
    [zoom>=6] { text-orientation: 8; }
    [zoom>=8]  { text-size: 28; }
    [zoom>=10]  { text-size: 32; }
    [zoom>=14]  { text-size: 36; }
  }
  [scalerank=3] {
    [zoom>=8] {
      text-size: 22;
      text-orientation: 8;
      text-face-name: @sans_black_italic;
    }
    [zoom>=10]  { text-size: 24; }
    [zoom>=14]  { text-size: 26; }
  }
  [scalerank>=4][zoom>10] {
    text-size: 20;
    text-orientation: 6;
    text-face-name: @sans_bold_italic;
  }
}

#place_label[type='town'][localrank<=1][zoom>8],
#place_label[type='town'][localrank<=3][zoom>=11] {
  text-name: @name;
  text-face-name: @sans_black_italic;
  text-halo-fill: @road_drk;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 16;
  text-wrap-width: 80;
  text-transform:lowercase;
  text-fill: @road_bright;  
  [zoom>=12] { text-size: 20; }
  [zoom>=13] { text-orientation: 4; }
  [zoom>=14] { text-size: 24; }
  }

#place_label[zoom>=11][type!='city'][type!='town'] {
  text-name: @name;
  text-face-name: @sans_bold;
  text-halo-fill: @road_drk;
  text-halo-radius: 3;
  text-halo-rasterizer: fast;
  text-size: 14;
  text-line-spacing:-2;
  text-wrap-width: 50;
  text-transform:lowercase;
  text-fill: @road_bright;
  [zoom>=14][type='neighbourhood'],
  [zoom>=14][type='village'] {
    text-size: 18;
    text-orientation: 5;
  }
}