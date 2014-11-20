// New Top POI - Central Austin
#poi_label [zoom>=16] {
    [name="Rio Rita"],
    [osm_id=1000003190873015], //via313 east
    [name="Franklin Barbecue"],
    [name="Qui"],
    [name="East Side Pies"], 
    [name="Bennu Coffee"],
    [name="Salty Sow"],
    [name="Eastside Cafe"],
    [name="'Donn's Depot'"],
    [name="Alamo Drafthouse"][osm_id!=1000001481633325],
    [name="Uchi"],
    [name="Barley Swine"],
    [name="Domincan Joe Coffee Shop"],
    [name="'Jo's Coffee'"],
    [name="'Torchy's Tacos'"][osm_id!=1000003181780241], //not So 1st one
    [name="Summermoon Coffee Bar"],
    [name="East Side King"][osm_id!=1000003190845088], //exclude campus
    [name="Kerbey Lane"][osm_id!=1000003181892454], // exclude campus
    [name="'Rudy's Texas Bar-B-Q'"],
    [osm_id=1000000436633129], //magnolias lake austin
    [name="'Donn's Depot'"],
    [osm_id=1000000537495439], //360 whole foods
    [name="Ramen Tatsu-Ya"],
    [osm_id=1000001953179853], //anderson hopdoddy
    [name="Tacodeli"][osm_id!=1000003181780245], //not lamar
    [name="Fonda San Miguel"],
    [name="Pinthouse Pizza"],
    [name="Draught House"],
    [osm_id=1000001236793007], //quacks
    [name="Epoch Coffee"] {
    
    ::icon { 
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false; 
      }//end icon
    
    ::text {
        text-name: @name;
        [osm_id=1000001236793007] { text-name: "'Quack\'s Bakery'"; }
        text-face-name: @sans_bold;
        text-fill: @poi_text;      
        text-size: 55;
        text-halo-fill: fadeout(@poi_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -15;
        text-align: center;
        text-placement-type: simple;
        text-placements: "S,SW,SE,E,W,SSW,SSE,N";
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-dy: 40;       
        text-avoid-edges: false;
        text-allow-overlap: true; 
      
      //adjust east
        [name="Eastside Cafe"]
        { 
        text-placements: "E";
        text-dx: 35; text-dy: 0;
        text-align: left;
        }

      //adjust SE
      [osm_id=1000003190845085] {
        text-placements: "SE";
        text-dx: 10;
        }
      
      //adjust west
        [name="Draught House"] 
        { 
        text-placements: "W";
        text-dx: 35; text-dy: 0;
        text-align: right;
        }
      
      //adjust north
      [name="Violet Crown"] {
          text-placements: "N";
          text-dy: 35;
        }
      
      
      } // end label
        
    } // end filter

  } //end top central austin


// N lamar case
#poi_label [zoom>=16] {
  [name="Uchiko"],[osm_id=1000003181780246],[osm_id=1000003181780245]
    {
    ::icon [osm_id=1000003181780245] {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;    
      }//end icon
    
    ::text {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @poi_text;      
        text-size: 55;
        text-halo-fill: fadeout(@poi_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -25;
        text-align: center;
        text-placement-type: simple;
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-avoid-edges: false;
        text-allow-overlap: true;   
      [name="Uchiko"] { 
        text-placements: "N"; 
        text-dy: 55; }
      [osm_id=1000003181780246] { //houndstooth
        text-placements: "E"; 
        text-wrap-character: "s";
        text-dx: 35; 
        text-align: left;}
      [osm_id=1000003181780245] { //tacodeli
        text-placements: "S"; 
        text-dy: 55;}
      }
    } //end filter
  } //end special N Lamar case

/* #poi_label [zoom>=16] {
  ::Topicon {
		[name="Torchy's Tacos"],[name="Whole Foods"],
		[name="Home Slice Pizza"],[name="Hopdoddy"],
		[name="Tacodeli"][osm_id!=1000003181780245],[name="Magnolia Cafe"],
		[name="Rudy's Texas Bar-B-Q"],[name="Easy Tiger"],
		[name="Franklin Barbecue"],[name="Draught House"],
		[name="Banger's Sausage House & Beer Garden"],[name="Magnolia Cafe"],
		[name="Kerbey Lane"],[name="Mohawk"],
		[name="East Side Pies"],[name="East Side King"],
		[name="Uchi"],[name="Ramen Tatsu-Ya"],
		[name="Chi'Lantro"],
		[name="la Barbecue"],[name="Epoch Coffee"],
		[name="South Congress Cafe"],[name="Mozart's Coffee Roasters"],
		[name="The Continental Club"],[name="Pinthouse Pizza"],
		[name="Qui"],[name="Eastside Cafe"],
		[name="Casino El Camino"],[name="Barley Swine"],
		[name="Halcyon"],[name="Moonshine Bar & Grill"],
		[name="G'Raj Mahal"],[name="Fonda San Miguel"],
		[name="Antone's"],[name="Craft Pride"],
        [name="The Jackalope"], //no via 313 icon since it's inside other places
		[name="Jo's Coffee"],[name="Salty Sow"],
        [name="Rio Rita"],[name="Violet Crown"], //add VC b/c Via 313 inside
		[name="Clive Bar"],[name="Cactus Cafe"],
		[name="Icenhauer's"],[name="Donn's Depot"],
		[name="Bennu Coffee"],[name="HandleBar"],
		[name="Dominican Joe Coffee Shop"],[name="Summermoon Coffee Bar"],
        [name="Alamo Drafthouse"],[name="Kung Fu Saloon"],
      [name="Quack's 43rd Street Bakery"],[name="Barton Springs Pool"],
      [name="Zilker Park"]
      {
      marker-fill:@poi_text;
      marker-line-color: @poi_halo;
      marker-line-width: 6;
      marker-file:url('icon/[maki]-24.svg');
      marker-height: 32;
      
      //marker overlap 
      [osm_id=1000001481633325], //alamo 6th
        [osm_id=1000003181804693], //icenhauer's
        [osm_id=1000002676032286], //home slice
        [osm_id=1000000919336155],// s congress cafe
        [osm_id=1000003181872973], //the continental club
        [osm_id=1000003181804697], //craft pride
        [osm_id=10000031817802320], //jackalope
        [name="G'Raj Mahal"]
        { marker-allow-overlap: true; } 
      [zoom>=18] {
        marker-line-width: 8;
        marker-height: 80;
        }
      }
    }
  
  ::Toplabel {
		[name="Torchy's Tacos"],[name="Whole Foods"],
		[name="Home Slice Pizza"],[name="Hopdoddy"],
        [name="Magnolia Cafe"],
		[name="Rudy's Texas Bar-B-Q"],[name="Easy Tiger"],
		[name="Franklin Barbecue"],[name="Draught House"],
		[name="Banger's Sausage House & Beer Garden"],[name="Magnolia Cafe"],
		[name="Kerbey Lane"],[name="Mohawk"],
		[name="East Side Pies"],[name="East Side King"],
		[name="Uchi"],[name="Ramen Tatsu-Ya"],
		[name="Chi'Lantro"],[name="Tacodeli"][osm_id!=1000003181780245],
		[name="la Barbecue"],[name="Epoch Coffee"],
		[name="South Congress Cafe"],[name="Mozart's Coffee Roasters"],
		[name="The Continental Club"],[name="Pinthouse Pizza"],
		[name="Qui"],[name="Eastside Cafe"],
		[name="Casino El Camino"],[name="Barley Swine"],
		[name="Halcyon"],[name="Moonshine Bar & Grill"],
		[name="G'Raj Mahal"],[name="Fonda San Miguel"],
		[name="Antone's"],[name="Craft Pride"],
		[name="Via 313"],[name="The Jackalope"],
		[name="Jo's Coffee"],[name="Salty Sow"],
        [name="Rio Rita"],[name="Violet Crown"],
		[name="Clive Bar"],[name="Cactus Cafe"],
		[name="Icenhauer's"],[name="Donn's Depot"],
		[name="Bennu Coffee"],[name="HandleBar"],
		[name="Dominican Joe Coffee Shop"],[name="Summermoon Coffee Bar"],
        [name="Alamo Drafthouse"],[name="Kung Fu Saloon"],
      [name="Quack's 43rd Street Bakery"],[name="Barton Springs Pool"],
      [name="Zilker Park"]
      {
      text-name: @name;
      text-face-name: @sans_bold;
      text-fill: @poi_text;      
      text-size: 16;
      text-halo-fill: fadeout(@poi_halo, 85%);
      text-halo-radius: 2;
      text-halo-rasterizer: fast;
      text-wrap-width: 30;
      text-line-spacing:  -5;
      text-align: center;
      text-placement-type: simple;
      text-placements: "S,SW,SE,E,W,SSW,SSE,N";
      text-transform: lowercase;
      text-character-spacing: 0.25;
      [maki!=null] { text-dy: 20; }
      
      // label exceptions 
      
      [name="Antone's"] { text-placements: "NW"; }
      
      [name="Banger's Sausage House & Beer Garden"] { 
        text-name: "'Banger\'s'"; text-placements: "W"; 
        text-allow-overlap: true; text-dx: 15; }
      
      [name="Quack's 43rd Street Bakery"] {
        text-name: "'Quack\'s Bakery'";
        }
      
      //west adjusting labels
      //first is hopdoddy s. congress
      //second is alamo 6th
      [osm_id=1000003181780233],[name="South Congress Cafe"],[name="Clive Bar"],
        [osm_id=1000001481633325 ],[name="Icenhauer's"],[osm_id=1000003181780244], 
        [osm_id=1000003181780245],[name="Craft Pride"]
        {
        text-placements: "W";
        text-allow-overlap: true;
        text-dx: 12; text-dy: 0;
        }
      
      // east adjusting labels
      [name="Home Slice Pizza"],[name="The Continental Club"],
        [name="G'Raj Mahal"]
        {
        text-placements: "E";
        text-allow-overlap: true;
        text-dx: -18; text-dy: 0; 
        [zoom>=18] { text-dx: -22; }
        }
      
      //north adjusting labels
      [name="Chi'Lantro"],[name="Violet Crown"] {
        text-placements: "N";
        text-allow-overlap: true;
        text-dx: 0; text-dy: 23; 
        [zoom>=18] { text-dx: -22; }        
        }
      
      //via 313 specials
      [osm_id=1000003190873016] { //rainey
        text-allow-overlap: true;
        text-placements: "SW,S";
        text-dx: -10; text-dy: 20;
        [zoom>=18] { text-dx: -20; text-dy: 10; }
        }
      
      [osm_id= 1000003190873015 ] { //violet crown
        text-allow-overlap: true;
        text-dy: 10;
        text-placements: "SE";
        [zoom>=18] { text-placements: "W"; }        
        }
      
      [zoom>=18] {
        text-size: 48;    
        text-halo-radius: 4;        
        text-wrap-width: 35;
        text-line-spacing:  -8;
        //resetting the z16 changes for z18
        [name="Antone's"],[osm_id=1000003181780233],[name="South Congress Cafe"],
          [name="Banger's Sausage House & Beer Garden"],[name="Clive Bar"],
          [osm_id=1000001481633325 ],[name="Icenhauer's"],[osm_id=1000003181780244],
          [name="The Continental Club"],[name="G'Raj Mahal"]{ 
          text-placements: "S,SW,SE,E,W,SSW,SSE,N"; 
          text-dy: 20;
        }        
        }
      }
    }
  }

// Points of Interest
/*
#poi_label[zoom>=18] {
  ::icon [maki!=null] {
//		why the f doesn't this work
        [name!="Torchy's Tacos"],[name!="Whole Foods"],
		[name!="Home Slice Pizza"],[name!="Hopdoddy"],
		[name!="Tacodeli"],[name!="Magnolia Cafe"],
		[name!="Rudy's Texas Bar-B-Q"],[name!="Easy Tiger"],
		[name!="Franklin Barbecue"],[name!="Draught House Pub & Brewery"],
		[name!="Banger's Sausage House & Beer Garden"],[name!="Magnolia Cafe"],
		[name!="Kerbey Lane"],[name!="The Mohawk"],
		[name!="East Side Pies"],[name!="East Side King @ Liberty Bar"],
		[name!="Uchi"],[name!="Ramen Tatsu-Ya"],
		[name!="Chi'Lantro"],
		[name!="la Barbecue"],[name!="Epoch"],
		[name!="South Congress Cafe"],[name!="Mozart's Coffee Roasters"],
		[name!="The Continental Club"],[name!="Pinthouse Pizza"],
		[name!="Qui"],[name!="Eastside Cafe"],
		[name!="Casino El Camino"],[name!="Barley Swine"],
		[name!="Halcyon"],[name!="Moonshine Bar & Grill"],
		[name!="G'Raj Mahal"],[name!="Fonda San Miguel"],
		[name!="Antone's"],[name!="Craft Pride"],
		[name!="Via 313 Pizza"],[name!="The Jackalope"],
		[name!="Jo's Coffee"],[name!="Salty Sow"],
        [name!="Rio Rita"],
		[name!="Clive Bar"],[name!="Cactus Cafe"],
		[name!="Icenhauer's"],[name!="Donn's Depot"],
		[name!="Bennu Coffee"],[name!="HandleBar"],
		[name!="Dominican Joe Coffee Shop"],[name!="Summermoon Coffee Bar"]
        [name!="Alamo Drafthouse"], 
        [name!="Uchiko"]
        [osm_id!=1000003181780246] //houndstooth
        [osm_id!=1000003181780245] //tacodeli 
      {    
      marker-fill:@road_bright;
      marker-line-color: @road_drk;
      marker-line-width: 6;
      marker-file:url('icon/[maki]-18.svg');
      }
  }
  ::label {
		[name!="Torchy's Tacos"],[name!="Whole Foods"],
		[name!="Home Slice Pizza"],[name!="Hopdoddy"],
		[name!="Tacodeli"],[name!="Magnolia Cafe"],
		[name!="Rudy's Texas Bar-B-Q"],[name!="Easy Tiger"],
		[name!="Franklin Barbecue"],[name!="Draught House Pub & Brewery"],
		[name!="Banger's Sausage House & Beer Garden"],[name!="Magnolia Cafe"],
		[name!="Kerbey Lane"],[name!="The Mohawk"],
		[name!="East Side Pies"],[name!="East Side King @ Liberty Bar"],
		[name!="Uchi"],[name!="Ramen Tatsu-Ya"],
		[name!="Chi'Lantro"],[name!="Houndstooth"],
		[name!="la Barbecue"],[name!="Epoch"],
		[name!="South Congress Cafe"],[name!="Mozart's Coffee Roasters"],
		[name!="The Continental Club"],[name!="Pinthouse Pizza"],
		[name!="Qui"],[name!="Eastside Cafe"],
		[name!="Casino El Camino"],[name!="Barley Swine"],
		[name!="Halcyon"],[name!="Moonshine Bar & Grill"],
		[name!="G'Raj Mahal"],[name!="Fonda San Miguel"],
		[name!="Antone's"],[name!="Craft Pride"],
		[name!="Via 313 Pizza"],[name!="The Jackalope"],
		[name!="Jo's Coffee"],[name!="Salty Sow"],
        [name!="Rio Rita"],[name!="Uchiko"],
		[name!="Clive Bar"],[name!="Cactus Cafe"],
		[name!="Icenhauer's"],[name!="Donn's Depot"],
		[name!="Bennu Coffee"],[name!="HandleBar"],
		[name!="Dominican Joe"],[name!="Summermoon Coffee Bar"],
        [name!="Alamo Drafthouse Coffee Shop"],
        [osm_id!=1000003181780247], //uchiko
        [osm_id!=1000003181780246], //houndstooth
        [osm_id!=1000003181780245] //tacodeli      
      {        
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
      text-character-spacing: 0.125;
      text-dy: 14;
      }
  }
} 
*/ /*
#poi_label { //special placement for N lamar places 
    [osm_id=1000003181780247], //uchiko
    [osm_id=1000003181780246], //houndstooth
    [osm_id=1000003181780245] //tacodeli
    {
    ::uchikoicon {
      [zoom>=16] {
        marker-fill: @poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-height: 32;
        marker-file:url('icon/[maki]-24.svg');
        }
      [zoom>=18] {
        marker-line-width: 8;
        marker-height: 36;
        marker-allow-overlap: true;
        }      
      }
    
    ::uchikolabel {
      [zoom>=16] {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @poi_text;      
        text-size: 16;
        text-halo-fill: fadeout(@poi_halo, 85%);
        text-halo-radius: 2;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -5;
        text-align: center;
        text-placement-type: simple;
        text-placements: "S,SW,SE,E,W,SSW,SSE,N";
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-dy: 20;
        //west label
        [osm_id=1000003181780247] { //uchiko
          text-placements: "NW";
          }
        [osm_id=1000003181780245] { //tacodeli
          text-placements: "SW";
          text-dy: 10;
          }
        //east label
        [osm_id=1000003181780246], { //houndstooth
          text-placements: "E";
          text-dx: 25; text-dy: 0;
          }
        }
      [zoom>=18] {
        text-size: 18;    
        text-halo-radius: 4;        
        text-wrap-width: 35;
        text-line-spacing:  -8;
        [osm_id=1000003181780245] { //tacodeli
          text-placements: "SW";
          text-dy: 30;
          }        
        [osm_id=1000003181780247] { //uchiko
          text-placements: "NW";
          text-dy: -30;
          }
        [osm_id=1000003181780246], { //houndstooth
          text-placements: "E";
          text-dx: 35; text-dy: -10;
          }        
        }
      }
  }
  }

#water_label {
  [osm_id= 1000027442711] { //barton springs
    
    ::icon {
      marker-fill:@poi_text;
      marker-line-color: @poi_halo;
      marker-line-width: 6;
      marker-file:url('icon/swimming-24.svg');
      marker-height: 32;      
      [zoom>=18] {
        marker-line-width: 8;
        marker-height: 36; }
      } // end icon
    
      ::label {
      text-name: @name;
      text-face-name: @sans_bold;
      text-fill: @poi_text;      
      text-size: 16;
      text-halo-fill: fadeout(@poi_halo, 85%);
      text-halo-radius: 2;
      text-halo-rasterizer: fast;
      text-wrap-width: 30;
      text-line-spacing:  -5;
      text-align: center;
      text-placement-type: simple;
      text-placements: "S,SW,SE,E,W,SSW,SSE,N";
      text-transform: lowercase;
      text-character-spacing: 0.25;        
      text-dy: 14;     
      text-allow-overlap: true;
        } //end label
      
      }
    }

*/