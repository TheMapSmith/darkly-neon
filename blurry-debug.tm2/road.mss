/* #road, #bridge {
  ::case {
    
    ::drkst {
      image-filters-inflate: true;
      [class='motorway'] {
        line-color: @road_drkst;
        [zoom>=16] {
          line-width: 11;
          image-filters: agg-stack-blur(3,3);
          }
        [zoom>=17] {
          line-width: 15;
          image-filters: agg-stack-blur(5,5);
          }
        [zoom>=18] {
          line-width: 22;
          image-filters: agg-stack-blur(9,9);
          }
        }
      }

    ::drk {
      image-filters-inflate: true;
      [class='motorway'] {
        line-color: @road_drk;
        [zoom>=16] {
          line-width: 8;
          image-filters: agg-stack-blur(2,2);
          }
        [zoom>=17] {
          line-width: 12;
          image-filters: agg-stack-blur(3,3);
          }
        [zoom>=18] {
          line-width: 18;
          image-filters: agg-stack-blur(5,5);
          }
        }
      }

    ::med {
      image-filters-inflate: true;
      [class='motorway'] {
        line-color: @road_med;
        [zoom>=16] {
          line-width: 4;
          image-filters: agg-stack-blur(2,2);
          }
        [zoom>=17] {
          line-width: 8;
          image-filters: agg-stack-blur(3,3);
          }
        [zoom>=18] {
          line-width: 13;
          image-filters: agg-stack-blur(5,5);
          }
        }
      }
    
    } // end case
  
  ::fill {
    line-color: @road_bright;
    line-width: .5;
    
    ::bright {
      [class='motorway'] {
        line-color: @road_bright;
        [zoom>=16] {
          line-width: 5;
          }
        [zoom>=17] {
          line-width: 6;
          }
        [zoom>=18] {
          line-width: 7;
          }
        }
      } 
    
    } // end fill
  } // end road */