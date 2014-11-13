/* Export Settings
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

@serif_bold: 'Meta Serif Offc Pro Bold',@fallback;
@serif_italic: 'Meta Serif Offc Pro Italic',@fallback;
  

// Common Colors //

@land: rgb(29, 21, 48);
@building: lighten(@land, 20);

@road_bright: rgb(243,212,55);
@road_med: rgb(223, 98, 55);
@road_drk: rgb(216, 40, 48);
@road_drkst: rgb(126, 10, 19);

@park_bright: rgb(57, 241, 3); 
@park_med: rgb(51, 215, 3);
@park_drk: rgb(42,177,2);
@park_drkst: rgb(27,113,1);

@water_bright: rgb(186, 237, 243 );
@water_med: rgb(149, 207, 246);
@water_drk: rgb(106, 155, 239);
@water_drkst: rgb(49, 82, 180);

@rail_bright: rgb(218,213,246);
@rail_med: rgb(153,138,245);
@rail_drk: rgb(73,66,117);
@rail_drkst: darken(@rail_drk, 20);

@cycle_bright: rgb(229,47,53);
@cycle_med: rgb(152,31,35);
@cycle_drk: rgb(88,18,20);

// Line Widths
// Starting with @max, road widths are systematically subtracted
// Putting all the widths in one place like this allows easy
// global changes

@max: 12; //used for motorway
@link: @max - 3; //9
@main: @max - 4; //8
@street: @max - 6; //6
@service: @max - 8; //4
@path: @max - 9; //3

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
@zoom16: 0; // subtracting a negative = adding -3
@zoom17: -3; //-5
@zoom18: -5; //[zoom>=18] -11


// Road Agg Blur Ratios
// When exporting @2x or @4x the agg stack will have 
// to be larger. Change these before exporting

@agg: 1; //@1x - for normal viewing
//@agg: 2; //@2x
//@agg: 4; //@4x

@fadeout: @agg + 90;

Map { background-color: @land; }