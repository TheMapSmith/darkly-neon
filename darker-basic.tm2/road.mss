#road, #bridge { 
  // exclude railroads and golf
  [type!='rail'][class!='golf'][type!='cycleway'][type!='footway'] {
    // casing/outlines & single lines 
  ::case[zoom>=6]['mapnik::geometry_type'=2] { 
   [class='motorway'] {      
        line-gamma: .6;  
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
        drkst/image-filters-inflate: true;        
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drk/image-filters-inflate: true;        
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);            
        med/image-filters-inflate: true;        
      [zoom>=16] {
        drkst/line-width: @max - @drkst;
        drk/line-width: @max - @drk;
        med/line-width: @max - @med;
        }
      [zoom>=17] {
        drkst/line-width: @max - @drkst - (@zoom17 * 1.5);
        drk/line-width: @max - @drk - (@zoom17 * 1.5);
        med/line-width: @max - @med - (@zoom17 * 1.5);        
        }
      [zoom>=18] {
        drkst/line-width: @max - @drkst - (@zoom18 * 1.5);
        drk/line-width: @max - @drk  - (@zoom18 * 1.5);
        med/line-width: @max - @med  - (@zoom18 * 1.5);        
        }
      } 
    [class='motorway_link'][zoom>=13] {
        line-gamma: .6;     
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drkst/image-filters-inflate: true;        
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
        drk/image-filters-inflate: true;        
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);                    
        med/image-filters-inflate: true;        
      [zoom>=16] {
        drkst/line-width: @link - @drkst;
        drk/line-width: @link - @drk;
        med/line-width: @link - @med;
        }
      [zoom>=17] {
        drkst/line-width: @link - @drkst - (@zoom17 * 1.5);
        drk/line-width: @link - @drk - (@zoom17 * 1.5);
        med/line-width: @link - @med - (@zoom17 * 1.5);        
        }
      [zoom>=18] {
        drkst/line-width: @link - @drkst - (@zoom18 * 2);
        drk/line-width: @link - @drk  - (@zoom18 * 2);
        med/line-width: @link - @med  - (@zoom18 * 2);        
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
        drkst/line-width: @main - @drkst - (@zoom17 * 1.5);
        drk/line-width: @main - @drk - (@zoom17 * 1.5);
        med/line-width: @main - @med - (@zoom17 * 1.5);
        }
      [zoom>=18] {
        drkst/line-width: @main - @drkst - (@zoom18 * 2);
        drk/line-width: @main - @drk  - (@zoom18 * 2);
        med/line-width: @main - @med  - (@zoom18 * 2);        
        }      
      } 
    [class='street'][zoom>=12] {
        line-gamma: .6;
        drkst/line-color: @road_drkst;
        drkst/image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
        drk/line-color: @road_drk;
        drk/image-filters: agg-stack-blur(2 * @agg, 2 * @agg);
        med/line-color: @road_med;        
        med/image-filters: agg-stack-blur(1 * @agg, 1 * @agg);                    
        drkst/image-filters-inflate: true;
        drk/image-filters-inflate: true;
        med/image-filters-inflate: true;        
      [zoom>=16] {
        drkst/line-width: @street - @drkst;
        drk/line-width: @street - @drk;
        med/line-width: @street - @med;
        }
      [zoom>=17] {
        drkst/line-width: @street - @drkst - (@zoom17 * 1.5);
        drk/line-width: @street - @drk - (@zoom17 * 1.5);
        med/line-width: @street - @med - (@zoom17 * 1.5); 
        }
      [zoom>=18] {
        drkst/line-width: @street - @drkst - (@zoom18 * 2);
        drk/line-width: @street - @drk - (@zoom18 * 2);
        med/line-width: @street - @med - (@zoom18 * 2);
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
        drkst/line-width: @service - @drkst - @zoom17;
        drk/line-width: @service - @drk - @zoom17;
        med/line-width: @service - @med - @zoom17;        
        }
      [zoom>=18] {
        drkst/line-width: @service - @drkst - @zoom18;
        drk/line-width: @service - @drk - @zoom18;
        med/line-width: @service - @med - @zoom18;        
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
        med/line-gamma: .6;
        med/line-color: @road_med;
      [zoom>=16] { med/line-width: 1.5; }
      [zoom>=17] { 
          bright/line-color: @road_bright;
          bright/line-width: 3;
        }
      [zoom>=18] { 
          med/line-width: 4; 
        }
      } 
    [class='service'][zoom>=15], 
    [class='path'][zoom>=15],
    [class='street_limited'][zoom>=12] {
        med/line-gamma: .6;
        med/line-color: @road_med;        
      [zoom>=16] { med/line-width: 1.0; }
      [zoom>=17] { 
          bright/line-color: @road_bright;
          bright/line-width: 1;
        }
      [zoom>=18] { 
          bright/line-color: @road_bright;
          bright/line-width: 2;
        }       
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

#road, #bridge {
  [type='cycleway'] {
    line-join: round;
    line-cap: round; 
    [zoom>=16] {
      drk/line-color: @cycle_drk;
      drk/line-width: @max - @drk - 3;
      med/line-color: @cycle_med;
      med/line-width: @max - @med - 3;
      bright/line-color: @cycle_bright;
      bright/line-width: @max - @bright - 3;
      white/line-color: white;
      white/line-width: 1.5;      
      }
    [zoom>=18] {
      drk/line-color: @cycle_drk;
      drk/line-width: @max - @drk;
      med/line-color: @cycle_med;
      med/line-width: @max - @med;
      bright/line-color: @cycle_bright;
      bright/line-width: @max - @bright;
      white/line-color: white;
      white/line-width: 1.5;
      }
    }
  }

#road, #bridge {
  [zoom>=17][type='footway'] {
    ::cases {
      line-color: @road_drkst;
      line-width: 2;
      image-filters: agg-stack-blur(5,5);
      image-filters-inflate: true;
      [zoom>=18] { line-width: 4;}
      }
    ::fills {
      line-color: @road_med;
      line-dasharray: 3,5;        
      [zoom>=18] { line-width: 2;}      
      }
    }
  }