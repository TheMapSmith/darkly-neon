#road, #bridge { 
  // exclude railroads and golf
  [type!='rail'][class!='golf'][type!='cycleway'][type!='footway'] {

/*---------------------case---------------------*/
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
            line-width: @street - @drkst;
            image-filters: agg-stack-blur(4 * @agg, 4 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=17] {        
            line-width: @street - @drkst - (@zoom17 * 1.5);
            image-filters: agg-stack-blur(6 * @agg, 6 * @agg);
            #road { line-cap: square; }
        }

        [zoom>=18] {
            line-width: @street - @drkst - (@zoom18 * 1.5);
            image-filters: agg-stack-blur(8 * @agg, 8 * @agg);
            #road { line-cap: square; }
        }
      }

      ::drk {
            line-color: @road_drk;
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
          line-color: @road_med;
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

      } //end street        

    [class='service'][zoom>=15],
    [class='path'][zoom>=15],
    [class='street_limited'][zoom>=12] {
      ::drkst {
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
      }      
    } //end service             
  } //end case

/*---------------------fill---------------------*/
    ::fill { 
      
    [class='motorway'] {  
      ::bright {
          line-color: @road_bright;
          [zoom>=16] { line-width: @max - @bright; }
          [zoom>=17] { line-width: @max - @bright - @zoom17; }
          [zoom>=18] { line-width: @max - @bright - @zoom18; }
      } 
    } //end motorway  
      
    [class='motorway_link'] {  
      ::bright {
          line-color: @road_bright;
          [zoom>=16] { line-width: @link - @bright; }
          [zoom>=17] { line-width: @link - @bright - @zoom17; }
          [zoom>=18] { line-width: @link - @bright - @zoom18; }
      } 
    } //end link  
      
    [class='main'] {  
      ::bright {
          line-color: @road_bright;
          line-cap: round;
          [zoom>=16] { line-width: @main - @bright; }
          [zoom>=17] { line-width: @main - @bright - @zoom17; }
          [zoom>=18] { line-width: @main - @bright - @zoom18; }
      } 
    } //end main
      

    [class='street'],
    [class='street_limited'] {  
      ::med {
          [zoom>=16] { 
            line-color: @road_med;
            line-width: @service - 2.5; 
          }
          [zoom>=17] { 
            line-color: @road_bright;
            line-width: @service - 1.5; }
          [zoom>=18] { 
            line-color: @road_bright;
            line-width: @service; 
          }
      } 
    } //end street
      
    [class='service'][zoom>=15], 
    [class='path'][zoom>=15] {  
      ::med {
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
      } 
    } //end path
  } //end fill
  } //end excludes
} //end road