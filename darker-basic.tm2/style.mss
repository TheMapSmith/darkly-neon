/* 
TODO
Retaining walls a la auditorium shores

Export Settings
Zoom: 16
W: -97.7599
S: 30.2362
E: -97.7315
N: 30.2487 

Center: 30.2625, -97.7457
11005w x 12327h

For the final export, re-export the road fills 
and overlay in Photoshop because the agg-stack-blur
interrupts the smooth top
*/

// Right now I'm struggling to get the bright fill to be aligned
// For some reason there's a break between bridge/road

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@fallback: 'Open Sans Regular';

@sans: 'Avenir Book', 'Source Sans Pro Regular', @fallback;
@sans_med: 'Avenir Medium', @fallback;
@sans_bold: 'Avenir Heavy','Source Sans Pro Semibold', @fallback;

@sans_italic: 'Avenir Book Oblique','Source Sans Pro Italic', @fallback;
@sans_med_italic: 'Avenir Medium Oblique', @fallback;
@sans_black_italic: 'Avenir Black Oblique', @fallback;
@sans_bold_italic: 'Avenir Heavy Oblique',@fallback;
@sans_black: 'Avenir Black', @fallback;

@serif_bold: 'Meta Serif Offc Pro Bold',@fallback;
@serif_italic: 'Meta Serif Offc Pro Italic',@fallback;
  

// Common Colors //

@land:  #010231;
@building: lighten(@land, 20);

@road_bright: rgb(243,212,55);
@road_med: rgb(223, 98, 55);
@road_drk: rgb(216, 40, 48);
@road_drkst: rgb(126, 10, 19);

//POI Styles

//TOP POI
@poi_text: white;
@poi_halo: @water_drkst;

//OTHER POI
@other_text: @road_bright;
@other_halo: @road_drkst;

@park_bright: rgb(57, 241, 3); 
@park_med: rgb(51, 215, 3);
@park_drk: rgb(42,177,2);
@park_drkst: rgb(27,113,1);

@water_bright: rgb(186, 237, 243);
@water_med: rgb(149, 207, 246);
@water_drk: rgb(106, 155, 239);
@water_drkst: rgb(49, 82, 180);
/* try red rail
@rail_bright: rgb(218,213,246);
@rail_med: rgb(153,138,245);
@rail_drk: rgb(73,66,117);
@rail_drkst: darken(@rail_drk, 20);
*/
@cycle_bright: rgb(229,47,53);
@cycle_med: rgb(152,31,35);
@cycle_drk: rgb(88,18,20);

@rail_bright: rgb(229,47,53);
@rail_med: rgb(152,31,35);
@rail_drk: rgb(88,18,20);
@rail_drkst: darken(@rail_drk, 20);

// Line Widths
// Starting with @max, road widths are systematically subtracted
// Putting all the widths in one place like this allows easy
// global changes

@max: 14; //used for motorway
@link: @max - 1;
@main: @max - 2;
@street: @max - 7;
@service: @max - 9;
@path: @max - 10;

// Color Width mods
// These get subtracted from the values above to get the neon glow look

@drkst: 0;
@drk: 2;
@med: 4;
@bright: 6;

// This let's me use the same line widths as above
// and apply a tweak if needed
@parkratio: .5; 

// Scale width mods
// This will setup the zoom scheme (eventually)
// Like the color widths, these are subtracted

@zoom6: 10; // [zoom<=6]
@zoom7: 9;
@zoom8: 8;
@zoom10: 7;
@zoom13: 6;
@zoom14: 5;
@zoom15: 3;
@zoom16: -3; // subtracting a negative = adding -3
@zoom17: -2; //-5
@zoom18: -4; //[zoom>=18] -11


// Road Agg Blur Ratios
// When exporting @2x or @4x the agg stack will have 
// to be larger. Change these before exporting

//@agg: 1; //@1x - for normal viewing
//@agg: 2; //@2x
//@agg: 4; //@4x
@agg: 8; //insane
//@agg: 16; //plaid

@fadeout: @agg + 90;

// Map

Map { background-color: @land; }

//export extents

#map2 [zoom>=16][Name!="East 6th"] {
//  [zoom<=16] {polygon-fill: white; }
  opacity: .125;
  line-width: .5;
  line-gamma: .5;
  line-color: mix(@land, white, 50%);
/*
  ::halo {
    line-color: white;
    line-width: 12;
    image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
    image-filters-inflate: true;
    opacity: .5;
    }
  
  ::case {
    line-width: 8;
    opacity: .7;
    [Name="Campus"]   { line-color: orange; }
    [Name="So Co"]    { line-color: white;  }
    [Name="Capital"]  { line-color: pink;   }
    [Name="East 6th"] { line-color: green;  }
    [Name="West 6th"] { line-color: yellow; }
    [Name="Market"]   { line-color: purple; }
    [Name="Zilker"]   { line-color: red;    }
    [Name="East Side"]{ line-color: blue; }
    }
  
  ::slim {
    line-color: white;
    line-width: .5;
    line-gamma: .6;
    }

*/
  //try fill
/*  ::fill { nah sucks
    opacity: .2;
    polygon-comp-op: color-burn;
    [Name="Campus"]   { polygon-fill: orange; }
    [Name="So Co"]    { polygon-fill: white;  }
    [Name="Capital"]  { polygon-fill: pink;   }
    [Name="East 6th"] { polygon-fill: green;  }
    [Name="West 6th"] { polygon-fill: yellow; }
    [Name="Market"]   { polygon-fill: purple; }
    [Name="Zilker"]   { polygon-fill: red;    }
    [Name="East Side"]{ polygon-fill: blue; }
    } */
  //very simple lines to line up print
//  ::linetwo {
  //  line-color: @land;
    //}
  }

#landuse [class='parking'] {
  polygon-fill: mix(@land, grey, 80%);
  line-color: darken(mix(@land, grey, 80%), 20);
  line-width: 1.5;
  }

/////////////// Parks

#landuse [class='cemetery'],[class='park'],
    [class='pitch'], [class='grass'] { 
  ::outlinefuzz {
    back/line-color: darken(@park_drkst,20);  
    back/line-width: (@max - @drkst) * 1.5; 
    back/line-cap: round;
    back/line-join: round;
    back/line-gamma: .5;      
    back/image-filters:agg-stack-blur(5*@agg,5*@agg);
    back/image-filters-inflate: true;    
    drkst/line-color: @park_drkst;  
    drkst/line-width: (@max - @drkst); // @parkratio; don't cut in half - make the back colors spread farther
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
    drkst/line-width: @link;
    drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
    drkst/line-cap:round;
    drk/line-color: @water_drk;
    drk/line-width: @link - @drk;
    drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
    drk/line-cap: round;
    med/line-color: @water_med;
    med/line-width: @link - @med;
    med/image-filters: agg-stack-blur(1*@agg,1*@agg);
    med/line-cap: round;
      } 
  ::top {
    bright/line-color: @water_bright;
    bright/line-width: @link - @bright;
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
  [zoom>=18] {
    ::wall { 
	  polygon-fill:mix(@building, @land, 85); 
	}
    ::roof {
      polygon-fill: @building;
      polygon-geometry-transform:translate(-2,-2.5);
      polygon-clip:false;  
      line-width: 0.5;
      line-color: mix(@building, #000, 85);
      line-geometry-transform:translate(-2,-2.5);
      line-clip:false;
     }
   }
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

/*
#barrier_line [zoom>=17] { //mainly for stairs at auditorium shores
      ::drkst {
            image-filters-inflate: true;
            line-color: @road_drkst;
        [zoom>=16] {
            line-width: @service - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
        }

        [zoom>=17] {        
            line-width: @service - @drkst;
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
        }

        [zoom>=18] {
            line-width: @service - @drkst;
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
        }
      }

      ::drk {
            line-color: @road_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @service - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);        
        }

        [zoom>=17] {
            line-width: @service - @drk;
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
        }

        [zoom>=18] {
            line-width: @service - @drk;
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @road_med;
        [zoom>=16] {
            line-width: @service - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);        
        }

        [zoom>=17] {
            line-width: @service - @med;
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
        }

        [zoom>=18] {
            line-width: @service - @med;
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
        }
      }      // end case
  
  ::fill {
      ::med {
      line-dasharray: 1,4;
          [zoom>=16] { 
            line-color: @road_med;
            line-width: @path - 2.5; 
          }
          [zoom>=17] { 
            line-color: @road_bright;
            line-width: @path - 2; }
          [zoom>=18] { 
            line-color: @road_bright;
            line-width: @path - 1; 
          }
      } 
    } //end fill
  } //end barrier line */


// Ian's pro tip for stylizing text halos
/*
text-halo-fill: fadeout(white, 98%);
fat halos, high fadeout
*/