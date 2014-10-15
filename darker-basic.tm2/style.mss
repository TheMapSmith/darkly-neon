// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';

// Common Colors //

@land: rgb(29, 21, 48);
@water: rgb(202, 249, 253);
@building: lighten(@land, 20);

@road_bright: rgba(243,212,55,1);
@road_med: rgba(223, 98, 55, 1);
@road_drk: rgba(216, 40, 48, 1);
@road_drkst: rgba(126, 10, 19, 1);
/* orig green
@park_bright: rgb(48,124,57); // first park rgb(240, 255, 101);
@park_med: rgb(184, 208, 62);
@park_drk: rgb(114, 113, 34);
@park_drkst: rgb(64, 75, 21);
*/

@park_bright: rgb(59,250,137); 
@park_med: rgb(47,245,95);
@park_drk: rgb(4,142,3);
@park_drkst: rgb(2,90,3);

@water_bright: rgb(186, 237, 243 );
@water_med: rgb(149, 207, 246);
@water_drk: rgb(106, 155, 239);
@water_drkst: rgb(49, 82, 180);


// Line Widths

@max: 11; //motorway
@link: @max - 2;
@main: @max - 4;
@street: @max - 6;
@service: @max - 8;
@path: @max - 9;

// Color Widths

@drkst: 0;
@drk: 2;
@med: 4;
@bright: 6;

// Map

Map { background-color: @land; }

/////////////// Roads

#road, #bridge { 
  // casing/outlines & single lines 
  ::case[zoom>=6]['mapnik::geometry_type'=2] { //post to github and ask for comments from the Mapbox people
   [class='motorway'] {      
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @max - @drkst;
      drkst/image-filters: agg-stack-blur(3,3);
      drk/line-color: @road_drk;
      drk/line-width: @max - @drk;
      drk/image-filters: agg-stack-blur(1,1);
      med/line-color: @road_med;
      med/line-width: @max - @med;     
      } 
    [class='motorway_link'][zoom>=13] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @link - @drkst;
      drkst/image-filters: agg-stack-blur(3,3);
      drk/line-color: @road_drk;
      drk/line-width: @link - @drk;
      drk/image-filters: agg-stack-blur(1,1);
      med/line-color: @road_med;
      med/line-width: @link - @med;      
      } 
    [class='main'] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @main - @drkst;
      drkst/image-filters: agg-stack-blur(3,3);
      drk/line-color: @road_drk;
      drk/line-width: @main - @drk;
      drk/image-filters: agg-stack-blur(1,1);
      med/line-color: @road_med;
      med/line-width: @main - @med;         
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @street - @drkst;
      drkst/image-filters: agg-stack-blur(3,3);
      drk/line-color: @road_drk;
      drk/line-width: @street - @drk;
      drk/image-filters: agg-stack-blur(1,1);
      med/line-color: @road_med;
      med/line-width: @street - @med;             
      } 
    [class='service'][zoom>=15] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @service - @drkst;
      drkst/image-filters: agg-stack-blur(3,3);
      drk/line-color: @road_drk;
      drk/line-width: @service - @drk;
      drk/image-filters: agg-stack-blur(1,1);        
      } 
    [class='path'][zoom>=15] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @path - @drkst;
      drkst/image-filters: agg-stack-blur(3,3);
      drk/line-color: @road_drk;
      drk/line-width: .5;
      drk/image-filters: agg-stack-blur(1,1);        
      } 
    }
  
  // fill/inlines
  ::fill[zoom>=6]['mapnik::geometry_type'=2] {
    [class='motorway'] {
      line-join: round;
      med/line-color: @road_med;
      med/line-width: @max - @med;
      bright/line-color: @road_bright;
      bright/line-width: @max - @bright;      
      bright/line-cap: round; 
      #bridge {line-cap: butt;} //if you can't get rid of it completely, make it obvious @ian29
      }
    [class='motorway_link'][zoom>=13] {
      line-join: round;
      med/line-color: @road_med;
      med/line-width: @link - @med;      
      bright/line-color: @road_bright;
      bright/line-width: @link - @bright;
      bright/line-cap: round;      
      } 
    [class='main'] {
      line-join: round;
      med/line-color: @road_med;
      med/line-width: @main - @med;      
      bright/line-color: @road_bright;
      bright/line-width: @main - @bright;
      bright/line-cap: round;       
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
      med/line-color: @road_med;
      med/line-width: .5;
      }
    [class='service'][zoom>=15] {
      med/line-color: @road_med;
      med/line-width: .5;      
      } 
    [class='path'][zoom>=15] {
      drk/line-color: @road_drk;
      drk/line-width: .5;            
    }   
  } 
}

#landuse [class='parking'] {
  polygon-fill: mix(@land, grey, 80%);
  line-color: darken(mix(@land, grey, 80%), 20);
  line-width: 1.5;
  }

/////////////// Parks
/* let's rebuild the parks
#landuse  [class='cemetery'],[class='park'],
    [class='pitch'],[class='wood'], [class='grass'] {
  ::outlines {
    line-gamma: .6;
    image-filters-inflate: true;
    drkst/line-color: @park_drkst;
    drkst/line-width: @max - @drkst;
    drkst/image-filters: agg-stack-blur(3,3);
    drkst/line-cap: round;
    drkst/line-join: round;
    drk/line-color: @park_drk;
    drk/line-width: @max - @drk;
    drk/image-filters: agg-stack-blur(1,1);
    drk/line-cap: round;
    drk/line-join: round;
    med/line-color: @park_med;
    med/line-width: @max - @med;
    med/line-cap: round;
    med/line-join: round;
    }
  ::fill {
    image-filters-inflate: true;
    line-gamma: .5;
    line-comp-op: screen;
    polygon-fill: mix(@park_drkst, @land, 50%);
    two/line-color: @park_drk;
    two/line-width: 30;
    two/line-join: round;
    two/line-cap: round;
    two/line-opacity: .25;
    one/line-color: @park_bright; //try having a "glowy" look
    one/line-width: 15;
    one/line-join: round;
    one/line-cap: round;
    one/line-opacity: .25;
    }  
  }*/

#landuse  [class='cemetery'],[class='park'],
    [class='pitch'],[class='wood'], [class='grass'] {

  ::outlines {
    drkst/line-color: @park_drkst;  
    drkst/line-width: 20;//@max - @drkst;
    drkst/line-cap: round;
    drkst/line-join: round;
    drkst/line-gamma: .5;      
    drkst/image-filters:agg-stack-blur(3,3);
    drk/line-color: @park_drk;
    drk/line-width: 15;//@max - @drk;
    drk/line-cap: round;
    drk/line-join: round;
    drk/line-gamma: .5;    
    med/line-color: @park_med;
    med/line-width: 10;//@max - @med;
    med/line-cap: round;
    med/line-join: round;
    med/line-gamma: .5;
    bright/line-color: @park_bright;
    bright/line-width: 5;//@max - @bright;
    bright/line-cap: round;
    bright/line-join: round;
    bright/line-gamma: .5;
    
    }
::filloffset {
    polygon-geometry-transform: translate(-3,-3);
    polygon-fill: @park_bright;
    comp-op: screen;
    }  
  ::fill {
    polygon-fill: mix(@park_drkst, @land, 50%);
    line-color: mix(@park_drkst, @land, 50%);
    line-width: 1.5;
    polygon-simplify: .1;
    }  
  
  }


/////////////// Water

#waterway {
  ::case {
    line-join: round;
    image-filters-inflate: true;
    drkst/line-color: @water_drkst;
    drkst/line-width: @max;
    drkst/image-filters: agg-stack-blur(3,3);
    drk/line-color: @water_drk;
    drk/line-width: @max - @drk;
    drk/image-filters: agg-stack-blur(1,1);
    med/line-color: @water_med;
    med/line-width: @max - @med;
    med/image-filters: agg-stack-blur(1,1);
      }
  ::fill {
    bright/line-color: @water_bright;
    bright/line-width: @max - @bright;
    }
  }

#water {
  ::case {
    bright/polygon-fill: @water_bright;
    }
  ::fill {
    image-filters-inflate: true;
    drkst/line-color: @water_drkst;
    drkst/line-width: @max;
    drkst/image-filters: agg-stack-blur(3,3);
    drk/line-color: @water_drk;
    drk/line-width: @max - @drk;
    drk/image-filters: agg-stack-blur(1,1);
    med/line-color: @water_med;
    med/line-width: @max - @med;
    med/image-filters: agg-stack-blur(1,1);    
    }
  }

/* OLD WATER
#waterway [class='stream'] {
  ::drkst {line-color: @water_drkst; line-width: 10; line-cap: round; }
  ::drk {line-color: @water_drk; line-width: 7; line-cap: round; }
  ::med {line-color: @water_med; line-width: 4; line-cap: round; }
  ::bright {line-color: @water_bright; line-width: 2; line-cap: round; }  
  }

#water {
  ::drkst {line-color: @water_drkst; line-width: 10 }
  ::drk {line-color: @water_drk; line-width: 7; }
  ::med {line-color: @water_med; line-width: 4; }
  ::bright {line-color: @water_bright; line-width: 2; }
  polygon-fill: @water_bright;
  }*/


/////////////// Buildings

#building {
  polygon-fill: @building;
  line-color: lighten(@building, 10);
  line-gamma: .5;
  line-width: .5;
  }

// Ian's pro tip for stylizing text halos
/*
text-halo-fill: fadeout(white, 98%);
fat halos, high fadeout
*/