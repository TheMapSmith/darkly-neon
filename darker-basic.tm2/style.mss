/* Export Settings
Zoom: 16
W: -97.7599
S: 30.2362
E: -97.7315
N: 30.2487
*/

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Avenir Book', 'Source Sans Pro Regular';
@sans_italic: 'Avenir Book Oblique','Source Sans Pro Italic';
@sans_bold: 'Avenir Medium','Source Sans Pro Semibold';
@sans_black_italic: 'Avenir Black Oblique';
@sans_bold_italic: 'Avenir Heavy Oblique';
@serif_bold: 'Meta Serif Offc Pro Bold';
  
// Common Colors //

@land: rgb(29, 21, 48);
@water: rgb(202, 249, 253);
@building: lighten(@land, 20);

@road_bright: rgba(243,212,55,1);
@road_med: rgba(223, 98, 55, 1);
@road_drk: rgba(216, 40, 48, 1);
@road_drkst: rgba(126, 10, 19, 1);

/* original greens
@park_bright: rgb(48,124,57); // first park rgb(240, 255, 101);
@park_med: rgb(184, 208, 62);
@park_drk: rgb(114, 113, 34);
@park_drkst: rgb(64, 75, 21);
*/

/* second attempt at greens
@park_bright: rgb(59,250,137); 
@park_med: rgb(47,245,95);
@park_drk: rgb(4,142,3);
@park_drkst: rgb(2,90,3);
*/
// another greens attempt.
@park_bright: rgb(57, 241, 3); 
@park_med: rgb(51, 215, 3);
@park_drk: rgb(42,177,2);
@park_drkst: rgb(27,113,1);

@water_bright: rgb(186, 237, 243 );
@water_med: rgb(149, 207, 246);
@water_drk: rgb(106, 155, 239);
@water_drkst: rgb(49, 82, 180);

// Line Widths

@max: 12; //motorway
@link: @max - 3;
@main: @max - 4;
@street: @max - 6;
@service: @max - 8;
@path: @max - 9;

// Color Widths

@drkst: 0;
@drk: 2;
@med: 4;
@bright: 6;
@parkratio: .5;

// Road Blurs
// When exporting @2x or @4x the agg stack will have 
// to be larger. Change these before exporting

@agg: 1; //@1x
//@agg: 2; //@2x
//@agg: 4; //@4x

// Map

Map { background-color: @land; }


#landuse [class='parking'] {
  polygon-fill: mix(@land, grey, 80%);
  line-color: darken(mix(@land, grey, 80%), 20);
  line-width: 1.5;
  }

/////////////// Parks

#landuse [class='cemetery'],[class='park'],
    [class='pitch'], [class='grass'] { //,[class='wood']
/* Try to see what only glowy borders looks like  
  ::fill {
    polygon-fill: @park_bright;//mix(@park_drkst, @land, 60%);
    line-color: mix(@park_drk, @land, 60%);
    line-width: 1.5;
    }      
  ::hollow {
    polygon-fill: #f0f0ff;
    comp-op: soft-light;
    image-filters: agg-stack-blur(1,1);
    polygon-geometry-transform: translate(0,3);
    polygon-clip: false;    
    } */
  ::outlinefuzz {
    back/line-color: darken(@park_drkst,20);  
    back/line-width: (@max - @drkst) * 1.5; 
    back/line-cap: round;
    back/line-join: round;
    back/line-gamma: .5;      
    back/image-filters:agg-stack-blur(5*@agg,5*@agg);
    back/image-filters-inflate: true;    
    drkst/line-color: @park_drkst;  
    drkst/line-width: (@max - @drkst); //* @parkratio; don't cut in half - make the back colors spread farther
    drkst/line-cap: round;
    drkst/line-join: round;
    drkst/line-gamma: .5;      
    drkst/image-filters:agg-stack-blur(4*@agg,4*@agg);
    drkst/image-filters-inflate: true; 
    drk/line-color: @park_drk;
    drk/line-width: (@max - @drk) * @parkratio;
    drk/line-cap: round;
    drk/line-join: round;
    drk/line-gamma: .5;    
    drk/image-filters:agg-stack-blur(3*@agg,3*@agg);
    drk/image-filters-inflate: true; 
    med/line-color: @park_med;
    med/line-width: (@max - @med);
    med/line-cap: round;
    med/line-join: round;
    med/line-gamma: .5;
    }  
  ::outlinecrisp {
    bright/line-color: @park_bright;
    bright/line-width: (@max - @bright) - 1;
    bright/line-cap: round;
    bright/line-join: round;
    bright/line-gamma: .5;
    white/line-color: white;
    white/line-width: 1.25;    
    }
  }

/////////////// Water

#waterway {
  ::case {
    line-join: round;
    image-filters-inflate: true;
    drkst/line-color: @water_drkst;
    drkst/line-width: @max;
    drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
    drkst/line-cap:round;
    drk/line-color: @water_drk;
    drk/line-width: @max - @drk;
    drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
    drk/line-cap: round;
    med/line-color: @water_med;
    med/line-width: @max - @med;
    med/image-filters: agg-stack-blur(1*@agg,1*@agg);
    med/line-cap: round;
      } 
  ::top {
    bright/line-color: @water_bright;
    bright/line-width: @max - @bright;
    bright/line-cap: round;
    white/line-color: white;
    white/line-width: 1.5;
    white/line-cap: round;
    }
  }

#water {
  ::fill {
    image-filters-inflate: true;
    drkst/line-color: @water_drkst;
    drkst/line-width: @max;
    drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
    drk/line-color: @water_drk;
    drk/line-width: @max - @drk;
    drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
    med/line-color: @water_med;
    med/line-width: @max - @med;
    med/image-filters: agg-stack-blur(1*@agg,1*@agg);    
    }  
  ::outline {
    bright/polygon-fill: @water_med; 
    bright/line-color: @water_bright;
    bright/line-width: @max - @bright;
    white/line-color: white;
    white/line-width: 1.5;    
    }
  }

/////////////// Buildings

#building {
  polygon-fill: @building;
  line-color: lighten(@building, 10);
  line-gamma: .5;
  line-width: .5;
  }

/////////////// Airport

#aeroway { 
  [type='taxiway'] {
    line-color: mix(@land, grey, 80%);
    line-width: 10;  
    line-cap: square;
    line-join: round;
    }
  [type='runway'] {
    line-color: mix(@land, grey, 80%);
    line-width: 25;  
    line-cap: square;
    line-join: round;
    }
  }

// Ian's pro tip for stylizing text halos
/*
text-halo-fill: fadeout(white, 98%);
fat halos, high fadeout
*/


/* old parks - rebuild above
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