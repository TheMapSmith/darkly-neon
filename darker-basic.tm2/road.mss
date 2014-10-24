/////////////// Roads

#road, #bridge { 
  // casing/outlines & single lines 
  ::case[zoom>=6]['mapnik::geometry_type'=2] { //post to github and ask for comments from the Mapbox people
   [class='motorway'] {      
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @max - @drkst;
      drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
      drk/line-color: @road_drk;
      drk/line-width: @max - @drk;
      drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
      med/line-color: @road_med;
      med/line-width: @max - @med;
      } 
    [class='motorway_link'][zoom>=13] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @link - @drkst;
      drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
      drk/line-color: @road_drk;
      drk/line-width: @link - @drk;
      drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
      med/line-color: @road_med;
      med/line-width: @link - @med;      
      } 
    [class='main'] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @main - @drkst;
      drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
      drk/line-color: @road_drk;
      drk/line-width: @main - @drk;
      drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
      med/line-color: @road_med;
      med/line-width: @main - @med;         
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @street - @drkst;
      drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
      drk/line-color: @road_drk;
      drk/line-width: @street - @drk;
      drk/image-filters: agg-stack-blur(1*@agg,1*@agg);
      med/line-color: @road_med;
      med/line-width: @street - @med;             
      } 
    [class='service'][zoom>=15] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @service - @drkst;
      drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
      drk/line-color: @road_drk;
      drk/line-width: @service - @drk;
      drk/image-filters: agg-stack-blur(1*@agg,1*@agg);        
      } 
    [class='path'][zoom>=15] {
      line-gamma: .6;
      image-filters-inflate: true;
      drkst/line-color: @road_drkst;
      drkst/line-width: @path - @drkst;
      drkst/image-filters: agg-stack-blur(3*@agg,3*@agg);
      drk/line-color: @road_drk;
      drk/line-width: .5;
      drk/image-filters: agg-stack-blur(1*@agg,1*@agg);        
      } 
    }
  
  // fill/inlines
  ::fill[zoom>=6]['mapnik::geometry_type'=2] {
    [class='motorway'] {
      line-join: round;
      med/line-color: @road_med;
      med/line-width: @max - @med;
      bright/line-color: @road_bright;
      bright/line-width: @max - @bright;      
      bright/line-cap: round; 
      #bridge {line-cap: butt;} //if you can't get rid of it completely, make it obvious @ian29
      }
    [class='motorway_link'][zoom>=13] {
      line-join: round;
      med/line-color: @road_med;
      med/line-width: @link - @med;      
      bright/line-color: @road_bright;
      bright/line-width: @link - @bright;
      bright/line-cap: round;      
      } 
    [class='main'] {
      line-join: round;
      med/line-color: @road_med;
      med/line-width: @main - @med;      
      bright/line-color: @road_bright;
      bright/line-width: @main - @bright;
      bright/line-cap: round;       
      } 
    [class='street'][zoom>=12],[class='street_limited'][zoom>=12] {
      med/line-color: @road_med;
      med/line-width: .5;
      }
    [class='service'][zoom>=15] {
      med/line-color: @road_med;
      med/line-width: .5;      
      } 
    [class='path'][zoom>=15] {
      drk/line-color: @road_drk;
      drk/line-width: .5;            
    }   
  } 
}