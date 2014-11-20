#road, #bridge { 
  // exclude railroads and golf
  [type!='rail'][class!='golf'][type!='cycleway']
    [type!='footway'][class!='driveway'] {

//---------------------case---------------------
  ::case[zoom>=6] {

    [class='motorway'] {
        
      ::drkst {
            image-filters-inflate: true;
            line-color: @road_drkst;
        [zoom>=16] {
            line-width: @max - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=17] {        
            line-width: @max - @drkst - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @max - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @road_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @max - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @max - @drk - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @max - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @road_med;
        [zoom>=16] {
            line-width: @max - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @max - @med - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @max - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }
    } //end motorway
      
    [class='motorway_link'] {
      ::drkst {
            image-filters-inflate: true;
            line-color: @road_drkst;
        [zoom>=16] {
            line-width: @link - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=17] {        
            line-width: @link - @drkst - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @link - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @road_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @link - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @link - @drk - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @link - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @road_med;
        [zoom>=16] {
            line-width: @link - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @link - @med - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @link - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }      
    } //end motorway_link    

    [class='main'] {
      ::drkst {
            image-filters-inflate: true;
            line-color: @road_drkst;
        [zoom>=16] {
            line-width: @main - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=17] {        
            line-width: @main - @drkst - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @main - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @road_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @main - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @main - @drk - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @main - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @road_med;
        [zoom>=16] {
            line-width: @main - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @main - @med - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @main - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }      
    } //end main      
      
    [class='street'] {
      ::drkst {
            image-filters-inflate: true;
            line-color: @road_drkst;
        [zoom>=16] {
            line-width: @street - @drkst - 2;
            image-filters: agg-stack-blur(3 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @street - @drkst - (@zoom18);
            image-filters: agg-stack-blur(7 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @road_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @street - @drk - 2;
            image-filters: agg-stack-blur(2 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=18] {
            line-width: @street - @drk - (@zoom18);
            image-filters: agg-stack-blur(6 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @road_med;
        [zoom>=16] {
            line-width: @street - @med - 2;
            image-filters: agg-stack-blur(1 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=18] {
            line-width: @street - @med - (@zoom18 );
            image-filters: agg-stack-blur(5 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }      

      } //end street        

    [class='service'],
    [class='path'], 
    [class='street_limited'] {
      line-color: @road_drkst;
      line-width: 2;
      image-filters: agg-stack-blur(5,5);
      image-filters-inflate: true;
        #bridge { 
          line-color: @water_bright;
          line-width: 4;
        }
      [zoom>=18] { 
          line-width: 4;
          #bridge { line-width: 6; }
        
        }
        
/*      ::drkst {
            image-filters-inflate: true;
            line-color: @road_drkst;
        [zoom>=16] {
            line-width: @service - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=17] {        
            line-width: @service - @drkst - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @service - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @road_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @service - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @service - @drk - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @service - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @road_med;
        [zoom>=16] {
            line-width: @service - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @service - @med - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @service - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }      */
    } //end service       
  } //end case

//---------------------fill---------------------
    ::fill { 
      line-color: @road_bright;
      line-cap: round;
    [class='motorway'] {      
          [zoom>=16] { line-width: @max - @bright; }
          [zoom>=17] { line-width: @max - @bright - @zoom17; }
          [zoom>=18] { line-width: @max - @bright - @zoom18; }
    } //end motorway  
      
    [class='motorway_link'] {  
          line-color: @road_bright;
          [zoom>=16] { line-width: @link - @bright; }
          [zoom>=17] { line-width: @link - @bright - @zoom17; }
          [zoom>=18] { line-width: @link - @bright - @zoom18; }
    } //end link  
      
    [class='main'] {  
          line-color: @road_bright;
          line-cap: round;
          [zoom>=16] { line-width: @main - @bright; }
          [zoom>=17] { line-width: @main - @bright - @zoom17; }
          [zoom>=18] { line-width: @main - @bright - @zoom18; }
    } //end main

    [class='street'],
    [class='street_limited'][type!="pedestrian"] {  
          [zoom>=16] { 
            line-color: @road_bright; //mix(@road_med, @road_bright, 50%);
            line-width: @service - 3; 
          }
          [zoom>=18] { 
            line-width: @service - 2; 
          }
    } //end street
      
    [class='service'],[type="pedestrian"], 
    [class='path'] {  
/*      ::med {
          [zoom>=16] { 
            line-color: @road_med;
            line-width: @path - 2; 
          }
          [zoom>=17] { 
            line-color: @road_bright;
            line-width: @path - 1.5; }
          [zoom>=18] { 
            line-color: @road_bright;
            line-width: @path; 
          }
      } */
        line-color: @road_med;
        [zoom>=17] { line-dasharray: 3,5; }
        [zoom>=18] { 
          line-width: 2;
          line-dasharray: 6,8; 
        }
    } //end path 
  } //end fill
  } //end excludes
} //end road

/////// Cycleway

#road, #bridge {
  [type='cycleway'] {
/*    ::case {
      ::drk {
            line-color: @cycle_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @street - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @street - @drk - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @street - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @cycle_med;
        [zoom>=16] {
            line-width: @street - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @street - @med - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @street - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }          
      } // end case
    ::fill {
      ::bright {
          line-color: @cycle_bright;
          line-cap: round;
          [zoom>=16] { line-width: @main - @bright; }
          [zoom>=17] { line-width: @main - @bright - @zoom17; }
          [zoom>=18] { line-width: @main - @bright - @zoom18; }
        } 
      ::brightwhite {
          line-color: white;
        }
      } //end fill */
    ::cases {
      line-color: @road_drkst;
      line-width: 2;
      image-filters: agg-stack-blur(5,5);
      image-filters-inflate: true;
              #bridge { 
          line-color: @water_bright;
          line-width: 4;
        }
      [zoom>=18] { 
        line-width: 4;
        #bridge { line-width: 6; }
      
      }
      }
    ::fills {
      line-color: @road_med;
      [zoom>=17] { line-dasharray: 3,5; }
      [zoom>=18] { 
        line-width: 2;
        line-dasharray: 6,8;
        }      
      }    
    } //end cycleway
  } //end road

//////// Footway

#road, #bridge {
  [zoom>=17][type='footway']    
    [osm_id!=255963751][osm_id!=255963752]  {
    ::cases {
      line-color: @road_drkst;
      line-width: 2;
      image-filters: agg-stack-blur(5,5);
      image-filters-inflate: true;
              #bridge { 
          line-color: @water_bright;
          line-width: 4;
        }
      [zoom>=18] { 
        line-width: 4;
        #bridge { line-width: 6; }
      
      }
      }
    ::fills {
      line-color: @road_med;
      [zoom>=17] { line-dasharray: 3,5; }
      [zoom>=18] { 
        line-width: 2;
        line-dasharray: 6,8;
        }      
      }
    }
  }

///////// Railroads

#road, #bridge {
  [type='rail'] {
    ::case {
      ::drkst {
            image-filters-inflate: true;
            line-color: @rail_drkst;
        [zoom>=16] {
            line-width: @main - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @main - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @rail_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @main - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=18] {
            line-width: @main - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @rail_med;
        [zoom>=16] {
            line-width: @main - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=18] {
            line-width: @main - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }      
    } //end case
    
    ::fill {
      ::med {
          line-color: @rail_med;
          [zoom>=16] { line-width: @main - @med; }
          [zoom>=18] { line-width: @main - @med - @zoom18; }        
        }
      ::bright {
          line-color: @rail_bright;
          [zoom>=16] { line-width: @main - @bright; }
          [zoom>=18] { line-width: @main - @bright - @zoom18; }
      } 
      ::brightwhite {
          line-color: mix(white, @rail_bright, 50%);
          [zoom>=16] { line-width: 1; }
          [zoom>=18] { line-width: 3; }        
        }
      ::hatched {
        line-dasharray: 1,8;
        line-color: @rail_med;
          [zoom>=16] { line-width: @link - @bright; }
          [zoom>=18] { line-width: @link - @bright - @zoom18; }        
        }
      } // end fill
    } //end rail
  } //end road 


#tunnel {
  [type='rail'] {
    ::case {
      ::drkst {
            image-filters-inflate: true;
            line-color: @rail_drkst;
        [zoom>=16] {
            line-width: @link - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=17] {        
            line-width: @link - @drkst - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @link - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @rail_drk;
            image-filters-inflate: true;
        [zoom>=16] {
            line-width: @link - @drk;
            image-filters: agg-stack-blur(3 * @agg, 3 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @link - @drk - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(5 * @agg, 5 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @link - @drk - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(7 * @agg, 7 * @agg);
            #road { line-cap: square; }
        }
      }        
        
      ::med {
          image-filters-inflate: true;
          line-color: @rail_med;
        [zoom>=16] {
            line-width: @link - @med;
            image-filters: agg-stack-blur(2 * @agg, 6 * @agg);
            #road { line-cap: square; }            
        }

        [zoom>=17] {
            line-width: @link - @med - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(4 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @link - @med - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }
      }      
    } //end case
    
    ::fill {
      ::med {
          line-color: @rail_drkst;
          [zoom>=16] { line-width: @link - @med; }
          [zoom>=17] { line-width: @link - @med - @zoom17; }
          [zoom>=18] { line-width: @link - @med - @zoom18; }        
        }
      ::bright {
          line-color: @rail_drk;
          [zoom>=16] { line-width: @link - @bright; }
          [zoom>=17] { line-width: @link - @bright - @zoom17; }
          [zoom>=18] { line-width: @link - @bright - @zoom18; }
      } 
/*      ::brightwhite {
          line-color: mix(white, @rail_bright, 50%);
          [zoom>=16] { line-width: 1; }
          [zoom>=17] { line-width: 2; }
          [zoom>=18] { line-width: 3; }        
        } */
      ::hatched {
        line-dasharray: 1,8;
        line-color: @rail_bright;
          [zoom>=16] { line-width: @link - @bright; }
          [zoom>=17] { line-width: @link - @bright - @zoom17; }
          [zoom>=18] { line-width: @link - @bright - @zoom18; }        
        }
      } // end fill
    } //end rail
  } //end road 