#rocket {
  marker-file: url('icon/rocket-24-solid.svg');
  marker-fill: @rail_bright;
  marker-line-color: @water_bright;
  [zoom>=16] {
    marker-height: 72;  
    marker-line-width: 3; }
  [zoom>=18] {
    marker-height: 108;  
    marker-line-width: 5; }
    
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
    
    ::other [name="Bar 96"],[name="THE BLACKHEART"],[name="Art of Tacos"],
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
        [name="Bar 96"] {
          text-placements: "E";
          text-dy: 0; text-dx: 50;      
          text-wrap-width: 0; }
        
        //west
        [name="Bungalow"],[name="Art of Tacos"],[name="THE BLACKHEART"], {
          text-placements: "W";
          text-dy: 0; text-dx: 50;      
          text-wrap-width: 0; }
        }//end label      
      } //end other       
    }//end rainey
  
  ::dirty [name="Paramount Theater"],//[name="HandleBar"], don't need - it's upstairs
    [name="The Hideout"],[name="The Driskill"],[name="Eddie V's"],
    [name="Pete's Dueling Piano Bar"],[name="Stubb's"],[name="Houndstooth"],
    [name="Moonshine Bar & Grill"],[name="Fogo De Chao"],
    [name="The Elephant Room"],[name="Cafe Crepe"],[name="Vince Young Steakhouse"],[name="Jumpshot"]
    
    {
    
    }//end dirty
  
  ::w6th [name="'Antone's'"],[name="The Gingerman"],[name="Jo's Coffee"],
    [name="Cantina Laredo"],[name="III Forks"],[name="La Zona Rosa"],
    [name="Kung Fu Saloon"],[name="Hut's Hamburgers"],[name="Little Woodrow's"],
    [name="Manuel's"],
    {
    
    }//end w6th
  
  ::soco [name="South Congress Cafe"],[name="Snack Bar"], [name="Amy's Ice Cream"],
    [name="The Continental Club"],[name="Hopdoddy"],[name="Home Slice Pizza"],
    [name="South Congress Cafe"],[name="Magnolia Cafe"],[name="Wahoo's Tacos"],
    [name="Torchy's Tacos"]
    {
    
    }//end soco
  
  ::zilker [name="Barton Springs Pool"],[name="Shady Grove"],
    [name="Umlauf Sculpture Garden and Museum"],[name="Zilker Zephyr"],
    [name="Zilker Hillside Theater"][osm_id=1000313444167],[name="Zilker Disc Golf"],
    [name="Zilker Park"],[name="Zilker Botanical Garden"],
    [name="Austin Nature Center"][osm_id=1000003194303977]
    {
    
    }//end zilker
  
  ::campus [name="Cactus Cafe"],[name="Main Building"],[name="McCombs School of Business"],
    [name="Peter T. Flawn Academic Center"],[name="Union Building"],
    [name="Harry Ransom Center"],[name="Perry-Castañeda Library"],
    [name="AT&T Executive Education and Conference Center"],
    [name="Bob Bullock Texas State History Museum"],
    [name="Blanton Museum of Art"],[name="The Co-op"],[name="Thai How Are You"],
    [name="Player's Restaurant"],[name="Darrell K Royal-Texas Memorial Stadium"],
    [name="Texas Memorial Museum"],[name="Lyndon B. Johnson Library"],
    [name="JP's Java"],[name="Crown and Anchor"],[name="East Side King"],
    [name="Kerbey Lane"],[name="Bite Mi"],[name="The Dog & Duck"]
    {

    }//end campus
  
  }//end z18 POI

#water_label [namme="Barton Springs Pool"] {
  
  }