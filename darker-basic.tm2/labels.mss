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