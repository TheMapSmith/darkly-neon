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
// highway shield
#road_label[class='motorway'][zoom>=8][reflen>=1][reflen<=6],
#road_label[class='main'][zoom>=8][reflen>=1][reflen<=6] {
  shield-name: "[ref]";
  shield-file: url("img/shield/motorway_sm_[reflen].png");
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
/*   [class='motorway'] {
      shield-name:  "[ref]";
      shield-file:  url("img/motorway_[reflen]x1.svg");
      shield-size: 11;
      shield-face-name: @sans_bold;
      shield-fill: @road_drkst;
      shield-halo-fill: fadeout(@road_bright, 60%);
      shield-halo-radius: 2;
      shield-spacing: 400;
      shield-avoid-edges: true;
      shield-min-padding: 10;
      shield-min-distance: 80;
/*      text-name: @name;
      text-placement: line;
      text-face-name: @sans;      
      text-fill: white;      
      text-size: 13;
      text-avoid-edges: true;
      text-transform:lowercase; 
      } 
    [class='motorway_link'][zoom>=13] {

    } */
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


/* These are teh label styles of Mapbox Outdoors
// =====================================================================
// ROAD LABELS
// =====================================================================

// highway shield
#road_label[class='motorway'][zoom>=8][reflen>=1][reflen<=6],
#road_label[class='main'][zoom>=8][reflen>=1][reflen<=6] {
  shield-name: "[ref]";
  shield-file: url("img/shield/motorway_sm_[reflen].png");
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
    shield-file: url("img/shield/motorway_sm_[reflen].png");
  }
}

// regular labels
#road_label['mapnik::geometry_type'=2] {
  // The z14 filter is *not* redundant to logic in SQL queries. Because z14
  // includes all data for z14+ via overzooming, the streets included in a
  // z14 vector tile include more features than ideal for optimal performance.
  [class='motorway'][zoom>=12],
  [class='main'][zoom>=12],
  [class='street'][zoom<=14][len>2500],
  [class='street'][zoom>=15],
  [class='street_limited'] {
    text-avoid-edges: true;
    text-name: @name;
    text-placement: line;
    text-face-name: @sans_lt;
    text-fill: @road_text;
    text-size: 11;
    text-halo-fill: fadeout(@land,85);
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-min-distance: 200; // only for labels w/ the same name
    [zoom>=14] { text-size: 12; }
    [zoom>=16] { text-size: 14; }
    [zoom>=18] { text-size: 16; }
    [class='motorway'],
    [class='main'] {
      [zoom>=14] { text-size: 12; }
      [zoom>=16] { text-size: 14; }
      [zoom>=17] { text-size: 16; }
      [zoom>=18] { text-size: 18; }
    }
  }
}

// less prominent labels for service + paths
#road_label[zoom>=14]['mapnik::geometry_type'=2]
[class!='motorway']
[class!='main']
[class!='street']
[class!='street_limited'] {
  text-avoid-edges: true;
  text-name: @name;
  text-placement: line;
  text-face-name: @sans;
  text-fill: #666;
  text-size: 10;
  text-halo-fill: fadeout(@land,60);
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-min-distance: 200; // only for labels with the same name
  [zoom>=16] { text-size: 12; }
  [zoom>=18] { text-size: 14; }
  [class='aerialway'] { text-fill: #765; }
  [type='piste'] { text-fill: lighten(#558,20); }
  [type='piste'][zoom>=15] { text-fill: lighten(#558,10); }
  [type='piste'][zoom>=18] { text-fill: #558; }
}
*/