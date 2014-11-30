#rocket { //fuck the label - we'll do it live
  ::marker {
  marker-file: url('icon/rocket-24-solid.svg');
  marker-fill: @rail_bright;
  marker-line-color: @water_bright;
  marker-allow-overlap: true;
  [zoom>=16] {
    marker-height: 72;  
    marker-line-width: 4; }
  [zoom>=18] {
    marker-height: 94;  
    marker-line-width: 5; }
  }
  
  ::label {
    text-name: "'AVAST'";
    text-face-name: @sans_black;
    text-fill: @rail_bright;
    text-halo-fill: @water_bright;
    text-halo-opacity: .9;
    text-allow-overlap: true;
    [zoom>=16] {
      text-size: 50;
      text-halo-radius: 7;
//      text-dx: 15;
      text-dy: 50;
      }
    [zoom>=18] {
      text-size: 80;
      text-halo-radius: 9;
      text-dx: 35;
      text-dy: 30;
      }
    }  
  }

#poi_label [zoom>=18] {
  ::e6th {
    ::top [name="Qui"],[osm_id=1000003190873015],[name="East Side King"] //via313
      {
      ::icon {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
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
        }//end label
      } //end top
    
    ::other [name="Shangri La"],[name="Rio Rita"],
    [name="Vintage Heart Coffee"],[name="The White Horse"],
    [name="The Liberty"],[name="Yellow Jacket Social Club"]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
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
        }//end label      
      } //end other    
    }//end e6th
  
  ::capital {
    
    //no TOP POI @ the capital
    
    ::other [name="Texas State Capitol"] ,
    [name="Marakesh Bar & Grill"],[name="Schultz's Beer Garden"],
    [name="The Old Bakery and Emporium"]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-line-spacing:  -15;
        text-align: center;
        text-wrap-width: 120;
        text-placement-type: simple;
        text-placements: "S,SW,SE,E,W,SSW,SSE,N";
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-dy: 40;       
        text-avoid-edges: false;
        text-allow-overlap: true;         
        
        //exceptions:
        [name="The Old Bakery and Emporium"] { text-placements: "N"; }
        [name="Marakesh Bar & Grill"] { text-wrap-width: 0; }        
        
        }//end label      
      } //end other       
    }//end capital
  
  ::rainey 
   {
    ::top [name="Clive Bar"],[name="Icenhauer's"],[name="Banger's Sausage House & Beer Garden"],
      [name="G'Raj Mahal"],[name="Craft Pride"],[osm_id=1000003190873016] //via313
      {
      ::icon {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @poi_text;      
        text-size: 55;
        text-halo-fill: fadeout(@poi_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -15;
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-avoid-edges: false;
        text-allow-overlap: true;
        text-align: center;
        text-placement-type: simple;
        text-dy: 40;
        
        //east
        [name="Icenhauer's"],[osm_id=1000003190873016], //via313
          [name="Banger's Sausage House & Beer Garden"] { 
          text-placements: "E";
          text-dy: 0; text-dx: 50;      
          text-wrap-width: 0; }
        
        //west
        [name="G'Raj Mahal"],[name="Clive Bar"],[name="Craft Pride"] { 
          text-placements: "W";
          text-dy: 0; text-dx: 50;      
          text-wrap-width: 0; }
        //exceptions
        [name="Banger's Sausage House & Beer Garden"] { text-name:"'Banger\'s'"; }
        }//end label
      } //end top
    
    ::other [name="Bar 96"],[name="Container Bar"],[name="Art of Tacos"],
      [name="Bungalow"]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
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
        
        //east
        [name="Bungalow"],[name="Bar 96"],[name="Container Bar"] {
          text-placements: "E";
          text-dy: 0; text-dx: 50;      
          text-wrap-width: 0; }
        
        //west
        [name="Art of Tacos"] {
          text-placements: "W";
          text-dy: 0; text-dx: 50;      
          text-wrap-width: 0; }        
        }//end label      
      } //end other       
    }//end rainey
  
  ::dirty 
    {
    ::top [name="Moonshine Bar & Grill"],[osm_id=1000003190890891], //houndstooth
      [name="HandleBar"],[name="Chi'Lantro"],[name="Mohawk"]
      {
      ::icon [name!="HandleBar"] {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @poi_text;      
        text-size: 55;
        text-halo-fill: fadeout(@poi_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -15;
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-avoid-edges: false;
        text-allow-overlap: true;
        text-align: center;
        text-placement-type: simple;
        text-dy: 40;
        
        //north
        [name="HandleBar"] { 
          text-placements: "N";
          text-dy: 90; }
        
        //wrap less
          [name="Moonshine Bar & Grill"]
          {
          text-wrap-width: 190;
          }
        
        //top and stack houndstooth
        [osm_id=1000003190890891] { //houndstooth
          text-wrap-character: "s";
          text-align: left;
          text-dy: 50;
          }
        }//end label
      } //end top
    
    ::other [name="Paramount Theatre"],
    [name="The Hideout"],[name="The Driskill"],[name="Eddie V's"],
    [name="Pete's Dueling Piano Bar"],[name="Stubb's"],[name="Fogo De Chao"],
    [name="Cafe Crepe"],[name="Vince Young Steakhouse"],
      [name="Blind Pig"],[name="Red Eyed Fly"],[name="Cedar Door"]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_med;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
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

        //exceptions
        
        //wrap less
        [name="Vince Young Steakhouse"],[name="Pete's Dueling Piano Bar"],
          [name="Moonshine Bar & Grill"] { text-wrap-width: 190;}
                        
        }//end label      
      } //end other        
    }//end dirty
  
  ::w6th 
    {
    ::top [osm_id=1000003190877885]//[name="Jo's Coffee"]
      {
      ::icon {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
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
        }//end label
      } //end top
    
    ::other [name="'Antone's'"],[name="The Gingerman"],[name="Cantina Laredo"],[name="III Forks"],[name="La Zona Rosa"],
    [name="Kung Fu Saloon"],[name="Hut's Hamburgers"],[name="Little Woodrow's"],
    [name="Manuel's"],[name='Malaga Tapas'],[name="Maiko Sushi"]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
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
        
        [name="Manuel's"] { 
          //text-placements: "N"; text-dy: 80;
          text-placements: "W"; text-dx: 30;
        }
        }//end label      
      } //end other      
    }//end w6th
  
  ::soco 
    {
    ::top [name="South Congress Cafe"],[name="The Continental Club"],[name="Hopdoddy"],[name="Home Slice Pizza"],
    [name="South Congress Cafe"],[name="Magnolia Cafe"],[osm_id=1000003181780241],//[name="Torchy's Tacos"],
      [osm_id=1000003181780244] //jo's
      {
      ::icon {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
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
        
        //west
      [osm_id=1000003181780233],//hopdaddy
          [name="South Congress Cafe"],[osm_id=1000003181780244]
        {
          text-placements: "W";
          text-allow-overlap: true;
          text-dx: 50;
        }
      
      // east adjusting labels
      [name="Home Slice Pizza"],[name="The Continental Club"]
        {
          text-placements: "E";
          text-allow-overlap: true;
          text-wrap-width: 90;
          text-align: left;
          text-dx: 50;          
        }        
        
        //W
        [osm_id=1000003181780244] { //jo's
          text-placements: "W";
          text-align: right;
          text-dx: 50; text-dy: 50;
          }
        
        }//end label
      } //end top
    
    ::other [name="Snack Bar"], [name="Amy's Ice Cream"],[name="Wahoo's Tacos"],
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
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

        //NE
        [name="Amy's Ice Cream"] {
          text-placements: "NE";
          text-wrap-width: 0;
          text-align: left;
          text-dx: 30; //text-dy: 50;
          }
        
        //W
        [name="Snack Bar"] {
          text-placements: "W";
          text-align: right;
          text-dx: 30;
          }
        
        
        }//end label      
      } //end other       
    }//end soco
  
  ::zilker 
    {
    ::top [name="Barton Springs Pool"],[name="Zilker Disc Golf"] //,[name="Zilker Park"]
      {
      ::icon {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
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
        }//end label
      } //end top
    
    ::other [name="Shady Grove"],
    [name="Umlauf Sculpture Garden and Museum"],[name="Zilker Zephyr"],
    [name="Zilker Hillside Theater"][osm_id=1000313444167],
    [name="Zilker Botanical Garden"],
    [name="Austin Nature Center"][osm_id=1000003194303977]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        [name="Zilker Botanical Garden"] { marker-file: url('icon/garden-24.svg'); }
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
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
        
        //N
        [name="Zilker Zephyr"] {
          text-placements: "N";
          text-dy: 50;
          }
        //wrap less
        [osm_id=1000000368165063] { //umlauf
          text-name: "'Umlauf Sculpture Garden'";
          }
        
        }//end label      
      } //end other     
    }//end zilker
  
  ::campus 
    {
    ::top [name="Cactus Cafe"],[name="East Side King"],[name="Kerbey Lane"],
      {
      ::icon {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 84;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
        }//end icon
      
      ::label {
        text-name: @name;
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
        }//end label
      } //end top
    
    ::other [name="Main Building"],
    [name="Harry Ransom Center"],[name="Perry-Castañeda Library"],
    [name="Bob Bullock Texas State History Museum"],
    [name="Blanton Museum of Art"],[name="Thai How Are You"],
    [name="Player's Restaurant"],[name="Darrell K Royal-Texas Memorial Stadium"],
    [name="Texas Memorial Museum"],[name="Lyndon B. Johnson Library"],
    [name="JP's Java"],[name="Crown and Anchor"],
    [name="Bite Mi"],[name="The Dog & Duck"]
      {
      ::icon {
        marker-fill:@other_text;
        marker-line-color: @other_halo;
        marker-line-width: 6;
        marker-file:url('icon/[maki]-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;   
        [name="JP's Java"] { marker-file: url('icon/cafe-24.svg'); }
        [osm_id=3000001639372] { //dkr
          marker-file: url('icon/america-football-24.svg');
          }

        [name="Main Building"] {
          marker-file:url('icon/monument-24.svg');
          marker-height: 144;
          }

          
        }//end icon
      
      ::label {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @other_text;      
        text-size: 45;
        text-halo-fill: fadeout(@other_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -15;
        text-align: center;
        text-placement-type: simple;
        text-placements: "S,SW,SE,E,W,SSW,SSE,N";
        text-transform: lowercase;
        text-character-spacing: 0.25;
        [maki!=''] { text-dy: 40;}
        text-avoid-edges: false;
        text-allow-overlap: true;
        
        [name="JP's Java"] { text-dy: 40; }
        
        //wrap
        [name="Thai How Are You"],
          [name="Blanton Museum of Art"],[osm_id=1000000566159519],  //bob bullock
          [name="The Dog & Duck"],[osm_id=1000172662523]//lbj
          { text-wrap-width: 190; }
                
        [osm_id=3000001639372] //dkr
          { 
          text-placements: "E"; 
          text-dx: 50; 
          text-wrap-width: 190;
        }
        
        //tower
        [name="Main Building"] {
          text-name: "'UT Tower'";
          text-dy: 80;
          text-transform: none;
          }
                
        }//end label      
      } //end other  
    }//end campus
  
  }//end z18 POI

#water_label {
  [osm_id= 1000027442711][zoom>=18] { //barton springs
    ::icon [name!="Lady Bird Lake"] {
        marker-fill:@poi_text;
        marker-line-color: @poi_halo;
        marker-line-width: 6;
        marker-file:url('icon/swimming-24.svg');
        marker-height: 72;   
        marker-allow-overlap: true;
        marker-allow-overlap: false;        
      } // end icon
    
      ::label {
        text-name: @name;
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
        } //end label
      
      }
  [name="Lady Bird Lake"] {
        text-name: @name;
        text-face-name: @sans_bold;
        text-fill: @poi_text;      
        text-halo-fill: fadeout(@poi_halo, 85%);
        text-halo-radius: 6;
        text-halo-rasterizer: fast;
        text-wrap-width: 30;
        text-line-spacing:  -15;
        text-align: center;
        text-transform: lowercase;
        text-character-spacing: 0.25;
        text-avoid-edges: false;
        text-allow-overlap: true;     
    [zoom>=16] {
      text-size: 30;
      text-wrap-width: 0;
      }
    [zoom>=18] {
      text-size: 55;   
      }
    }
   }
