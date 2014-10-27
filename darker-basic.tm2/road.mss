/////////////// Roads

#road, #bridge { 
  // exclude railroads and golf
  [type!='rail'][class!='golf'] {
    // casing/outlines & single lines 
  ::case[zoom>=6]['mapnik::geometry_type'=2] { 
   [class='motorway'] {      
        line-gamma: .6;
        image-filters-inflate: true;        
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);            
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
        line-gamma: .6;
        image-filters-inflate: true;        
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);                    
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
        line-gamma: .6;
        image-filters-inflate: true;        
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
        med/line-color: @road_med;        
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
    [class='street'][zoom>=12] {
        line-gamma: .6;
        image-filters-inflate: true;        
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);                    
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
    [class='path'][zoom>=15],
    [class='street_limited'][zoom>=12] {
        line-gamma: .6;
        image-filters-inflate: true;        
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);                    
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
    [class='motorway'] {
        line-gamma: .6;
        line-color: @road_bright;
        line-cap: round;
      [zoom>=16] { line-width: @max - @bright; }
      [zoom>=17] { line-width: @max - @bright - @zoom17; }
      [zoom>=18] { line-width: @max - @bright - @zoom18; }      
      }
    [class='motorway_link'][zoom>=13] {
        line-gamma: .6;
        line-color: @road_bright;    
      [zoom>=16] { line-width: @link - @bright; }
      [zoom>=17] { line-width: @link - @bright - @zoom17; }
      [zoom>=18] { line-width: @link - @bright - @zoom18; }
      } 
    [class='main'] { 
        line-gamma: .6;
        line-color: @road_bright;
      [zoom>=16] { line-width: @main - @bright; }
      [zoom>=17] { line-width: @main - @bright - @zoom17; }
      [zoom>=18] { line-width: @main - @bright - @zoom18; }
      } 
    [class='street'][zoom>=12],
    [class='street_limited'][zoom>=12] {
        line-gamma: .6;
        line-color: @road_med;
      [zoom>=16] { line-width: 1.5; }
      [zoom>=17] { line-width: 2.0; }
      [zoom>=18] { line-width: 2.5; }
      } 
    [class='service'][zoom>=15], 
    [class='path'][zoom>=15],
    [class='street_limited'][zoom>=12] {
        line-gamma: .6;
        line-color: @road_med;        
      [zoom>=16] { line-width: 1.0; }
      [zoom>=17] { line-width: 1.5; }
      [zoom>=18] { line-width: 2.5; }       
      }   
    }  
  } 
}

///////// Railroads

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
   ::fill {
      line-gamma: .6;
      line-join: round;
      med/line-color: @road_med;
      bright/line-color: @rail_bright;
      [zoom>=16] {
        med/line-width: @link - @med;
        bright/line-width: @link - @bright;
        }
      [zoom>=17] {
        med/line-width: @link - @med - @zoom16;
        bright/line-width: @link - @bright - @zoom16;        
        }
      [zoom>=18] {
        med/line-width: @link - @med  - @zoom17;        
        bright/line-width: @link - @bright - @zoom17;
        }   
      }
  }
}