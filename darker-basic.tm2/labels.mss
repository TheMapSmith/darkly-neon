#centroids [zoom=16][Name!='East 6th']{
  text-fill: white;
  text-name: [Name];
  text-face-name: 'Avenir Black';
  text-size: 90;
  text-wrap-width: 200;
  text-align: center;
  text-line-spacing: -35;  
  text-halo-fill: fadeout(lighten(@land, 20), 50);
  text-halo-radius: 10;
  text-allow-overlap: true;
  [Name="Capital"] {
    text-name: "'State Capital'";
    }
  
  [Name="Campus"] {
    text-name: "'UT Campus'";
    text-wrap-width: 100;
    text-line-spacing: -55;
    }
  
  [Name="Rainey"] {
    text-name: "'Rainey Street'";
    }

  [Name="West 6th"] {
    text-name: "'West 6th St'";
    }
  
//removed e6th
  
  [Name="Zilker"] {
    text-name: "'Zilker Park'";
    }
  
  [Name="So Co"] {
    text-name: "'South Congress'";
    }
  [Name="Dirty 6th"] {
    text-name: "'6th St'";
    text-wrap-width: 5;
    }
}



// Highway shield

#road_label[class='motorway'][zoom>=8][reflen>=1][reflen<=11],
#road_label[class='main'][zoom>=8][reflen>=1][reflen<=11] {
  shield-name: "[ref]";
  shield-file: url("img/motorway_[reflen]x1.svg");
  shield-size: 19;
  shield-face-name: @sans_bold;
  shield-fill: #fff;
  shield-spacing: 300;
//  shield-avoid-edges: true;
  shield-min-padding: 10;
  shield-min-distance: 40;
  [zoom>=12] { shield-min-distance: 80; }
  [zoom>=15] {
    shield-spacing: 400;
    shield-size: 21;
    shield-transform: scale(1.7,1.7);
  }
}


#road_label { 
    [class='main'][name=~'^((?!Frontage).)*$'] { //this regex is for eliminating "frontage" labels 
      text-name: @name;
      text-placement: line;
      text-face-name: @sans_bold;
      text-fill: @road_bright;
      text-avoid-edges: true;
      text-halo-fill: fadeout(@road_drkst, @fadeout/2);
      text-min-padding: 25;
      text-transform:lowercase;
      text-halo-rasterizer: fast;
      [zoom>=16] {
        text-size: (@max - @drk) * 3;
        text-halo-radius: 6;
        }
      [zoom>=18] {
        text-size: (@max - @drkst) * 3;
        text-halo-radius: 5;
        }        
      } 
    [class='street'][zoom>=18],
    [class='street_limited'][zoom>=18] {
      text-name: @name;
      text-placement: line;
      text-face-name: @sans_med_italic;
      text-fill: @road_bright;
      text-avoid-edges: true;
      text-halo-radius: 3;
      text-halo-fill: fadeout(@road_drkst, @fadeout/2);    
      text-min-padding: 25;      
      text-transform:lowercase;
      text-halo-rasterizer: fast;
      text-size: (@max - @drkst) * 2.5;
   }
}

// waterway labels

#waterway_label [class='river']{
  text-name: @name;
  text-face-name: @serif_italic;
  text-fill: @water_drkst;
  text-character-spacing: 7;
  text-placement: line;
  text-avoid-edges: true;
  text-halo-fill: fadeout(@water_bright, @fadeout);  
    [zoom>=16] {
      text-size: 24;    
      text-halo-radius: 4;          
      }
    [zoom>=18] {
      text-size: 30;    
      text-halo-radius: 6;                
      }    
  }


// --- places ------------------------------------
// Who needs em?


//ladybird lake

#road_label [name="Lady Bird Lake Hike and Bike Trail"] {
      text-name: "'Town Lake Running Trail'";
      text-placement: line;
      text-face-name: @sans_italic;
      text-fill: @road_bright;
      text-halo-rasterizer: fast;
//      text-avoid-edges: true;
      text-halo-radius: 2;
      text-halo-fill: @road_drkst;    
      text-min-padding: 25;      
      text-transform:lowercase;
  text-allow-overlap: true;
      [zoom>=16] {
        text-size: 19;//(@max - @drk) + 3;        
        }
      [zoom>=18] {
        text-face-name: @sans_med_italic;        
        text-size: 20;//(@max - @drkst) ;//* 2.5;
        }
  }