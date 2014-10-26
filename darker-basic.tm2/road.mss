/////////////// Roads

#road, #bridge { 
  // exclude railroads and golf
  [type!='rail'][class!='golf'] {
    // casing/outlines & single lines 
  ::case[zoom>=6]['mapnik::geometry_type'=2] { 
    // These styles apply to everything in the ::case class
    line-gamma: .6;
    image-filters-inflate: true;        
    drkst/line-color: @road_drkst;
    drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
    drk/line-color: @road_drk;
    drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
    med/line-color: @road_med;        
    med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);    
   [class='motorway'] {      
      [zoom>=16] {
        drkst/line-width: @max - @drkst;
        drk/line-width: @max - @drk;
        med/line-width: @max - @med;
        }
      [zoom>=17] {
        drkst/line-width: @max - @drkst - @zoom17;
        drk/line-width: @max - @drk - @zoom17;
        med/line-width: @max - @med - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @max - @drkst - @zoom18;
        drk/line-width: @max - @drk  - @zoom18;
        med/line-width: @max - @med  - @zoom18;        
        }
      } 
    [class='motorway_link'][zoom>=13] {
      [zoom>=16] {
        drkst/line-width: @link - @drkst;
        drk/line-width: @link - @drk;
        med/line-width: @link - @med;
        }
      [zoom>=17] {
        drkst/line-width: @link - @drkst - @zoom17;
        drk/line-width: @link - @drk - @zoom17;
        med/line-width: @link - @med - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @link - @drkst - @zoom18;
        drk/line-width: @link - @drk  - @zoom18;
        med/line-width: @link - @med  - @zoom18;        
        }      
      } 
    [class='main'] {
      [zoom>=16] {
        drkst/line-width: @main - @drkst;
        drk/line-width: @main - @drk;
        med/line-width: @main - @med;
        }
      [zoom>=17] {
        drkst/line-width: @main - @drkst - @zoom17;
        drk/line-width: @main - @drk - @zoom17;
        med/line-width: @main - @med - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @main - @drkst - @zoom18;
        drk/line-width: @main - @drk  - @zoom18;
        med/line-width: @main - @med  - @zoom18;        
        }      
      } 
    [class='street'][zoom>=12],
    [class='street_limited'][zoom>=12]
      {
      [zoom>=16] {
        drkst/line-width: @street - @drkst;
        drk/line-width: @street - @drk;
        med/line-width: @street - @med;
        }
      [zoom>=17] {
        drkst/line-width: @street - @drkst; // - @zoom17;
        drk/line-width: @street - @drk; // - @zoom17;
        med/line-width: @street - @med; // - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @street - @drkst; // - @zoom17;
        drk/line-width: @street - @drk; //  - @zoom17;
        med/line-width: @street - @med; //  - @zoom17;        
        }       
      }
    [class='service'][zoom>=15],
    [class='path'][zoom>=15]   {
      [zoom>=16] {
        drkst/line-width: @service - @drkst;
        drk/line-width: @service - @drk;
        med/line-width: @service - @med;
        }
      [zoom>=17] {
        drkst/line-width: @service - @drkst; // - @zoom17;
        drk/line-width: @service - @drk; // - @zoom17;
        med/line-width: @service - @med; // - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @service - @drkst; // - @zoom17;
        drk/line-width: @service - @drk; //  - @zoom17;
        med/line-width: @service - @med; //  - @zoom17;        
        }       
      } 
    }
  
  // fill/inlines
  ::fill[zoom>=6]['mapnik::geometry_type'=2] {
    line-gamma: .6;
    line-join: round;
    med/line-color: @road_med;
//    bright/line-color: @road_bright;    
//    bright actually needs to be defined individually
//    because the smaller roads dont' use it
//    #bridge {line-cap: butt;} 
    [class='motorway'] {
      bright/line-color: @road_bright;    
      [zoom>=16] {
        med/line-width: @max - @med;
        bright/line-width: @max - @bright;
        }
      [zoom>=17] {
        med/line-width: @max - @med - @zoom17;
        bright/line-width: @max - @bright - @zoom17;        
        }
      [zoom>=18] {
        med/line-width: @max - @med  - @zoom18;        
        bright/line-width: @max - @bright - @zoom18;
        }      
      }
    [class='motorway_link'][zoom>=13] {
      bright/line-color: @road_bright;    
      [zoom>=16] {
        med/line-width: @link - @med;
        bright/line-width: @link - @bright;
        }
      [zoom>=17] {
        med/line-width: @link - @med - @zoom17;        
        bright/line-width: @link - @bright - @zoom17;
        }
      [zoom>=18] {
        med/line-width: @link - @med  - @zoom18;        
        bright/line-width: @link - @bright - @zoom18;
        }           
      } 
    [class='main'] {
      bright/line-color: @road_bright;    
      [zoom>=16] {
        med/line-width: @main - @med;
        bright/line-width: @main - @bright;
        }
      [zoom>=17] {
        med/line-width: @main - @med - @zoom17;        
        bright/line-width: @main - @bright - @zoom17;
        }
      [zoom>=18] {
        med/line-width: @main - @med  - @zoom18;        
        bright/line-width: @main - @bright - @zoom18;
        }
      } 
    [class='street'][zoom>=12],
    [class='street_limited'][zoom>=12]
      {
      bright/line-color: @road_bright;    
      [zoom>=16] {
        med/line-width: .5;
        bright/line-width: .75;        
        }
      [zoom>=17] {
        med/line-width: 1.5;
        bright/line-width: .75;                
        }
      [zoom>=18] {
        med/line-width: 2.5;
        bright/line-width: .75;                
        }
      }
    [class='service'][zoom>=15], 
    [class='path'][zoom>=15]   {
      bright/line-color: @road_bright;           
      [zoom>=16] {
        med/line-width: 1;
        bright/line-width: 1;
        }
      [zoom>=17] {
        med/line-width: 1.25;
        bright/line-width: 1.125;        
        }
      [zoom>=18] {
        med/line-width: 2.25;
        bright/line-width: 2.125;        
        }       
      }    
   } 
  }
}

#road, #bridge {
  [type='rail'] {
    ::case {
    // These styles apply to everything in the ::case class
      line-gamma: .6;
      image-filters-inflate: true;        
      drkst/line-color: @rail_drkst;
      drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
      drk/line-color: @rail_drk;
      drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
      med/line-color: @rail_med;        
      med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);       
      [zoom>=16] {
        drkst/line-width: @main - @drkst;
        drk/line-width: @main - @drk;
        med/line-width: @main - @med;
        }
      [zoom>=17] {
        drkst/line-width: @main - @drkst - @zoom17;
        drk/line-width: @main - @drk - @zoom17;
        med/line-width: @main - @med - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @main - @drkst - @zoom18;
        drk/line-width: @main - @drk  - @zoom18;
        med/line-width: @main - @med  - @zoom18;        
        }      
    }
   ::fill {
      line-gamma: .6;
      line-join: round;
      med/line-color: @road_med;
      bright/line-color: @rail_bright;
      [zoom>=16] {
        med/line-width: @main - @med;
        bright/line-width: @main - @bright;
        }
      [zoom>=17] {
        med/line-width: @main - @med - @zoom16;
        bright/line-width: @main - @bright - @zoom16;        
        }
      [zoom>=18] {
        med/line-width: @main - @med  - @zoom17;        
        bright/line-width: @main - @bright - @zoom17;
        }   
      }
  }
}