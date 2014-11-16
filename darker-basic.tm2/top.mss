#poi_label[zoom>=16] {
  ::Topicon {
    [name="Antone's"],
      [name='Fonda San Miguel'],
      [name='Halcyon'],
      [name='HandleBar'],
      [name='Home Slice Pizza'],
      [name='More Home Slice Pizza'],
      [name='Houndstooth Coffee'],
      [name='Magnolia Cafe'],
      [name='Pinthouse Pizza'],
      [name='Rio Rita'],
      [name='South Congress Cafe'],
      [name='Summermoon Coffee Bar'],
      [name='Tacodeli'],
      [name='Uchiko'],
      [name='Whole Foods'],
      [name="Torchy's Tacos"], 
      [name='The Elephant Room'],// fake just for test print
      [name='The Gingerman'],
      [name='Cantina Laredo'],
      [name='Alamo Drafthouse']
      {
      marker-fill:@park_bright;
      marker-file:url('icon/[maki]-24.svg');
      marker-height: 30;
      }
  }
  ::Toplabel {
    [name="Antone's"],
      [name='Fonda San Miguel'],
      [name='Halcyon'],
      [name='HandleBar'],
      [name='Home Slice Pizza'],
      [name='More Home Slice Pizza'],
      [name='Houndstooth Coffee'],
      [name='Magnolia Cafe'],
      [name='Pinthouse Pizza'],
      [name='Rio Rita'],
      [name='South Congress Cafe'],
      [name='Summermoon Coffee Bar'],
      [name='Tacodeli'],
      [name='Uchiko'],
      [name='Whole Foods'],
      [name="Torchy's Tacos"],
      [name='The Elephant Room'],// fake just for test print
      [name='The Gingerman'],
      [name='Cantina Laredo'],
      [name='Alamo Drafthouse']      
      {
      text-name: @name;
      text-face-name: @sans_bold;
      text-size: 16;
      text-fill: @park_bright;
      text-halo-fill: fadeout(@park_drkst, 85%);
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
      }
  }
}

// Points of Interest

#poi_label[zoom>=18] {
  ::icon[maki!=null] {
    [name!="Antone's"]
      [name!='Fonda San Miguel']
      [name!='Halcyon']
      [name!='HandleBar']
      [name!='Home Slice Pizza']
      [name!='More Home Slice Pizza']
      [name!='Houndstooth Coffee']
      [name!='Magnolia Cafe']
      [name!='Pinthouse Pizza']
      [name!='Rio Rita']
      [name!='South Congress Cafe']
      [name!='Summermoon Coffee Bar']
      [name!='Tacodeli']
      [name!='Uchiko']
      [name!='Whole Foods']
      [name!="Torchy's Tacos"] {    
      marker-fill:@road_bright;
      marker-file:url('icon/[maki]-18.svg');
      }
  }
  ::label {
    [name!="Antone's"]
      [name!='Fonda San Miguel']
      [name!='Halcyon']
      [name!='HandleBar']
      [name!='Home Slice Pizza']
      [name!='More Home Slice Pizza']
      [name!='Houndstooth Coffee']
      [name!='Magnolia Cafe']
      [name!='Pinthouse Pizza']
      [name!='Rio Rita']
      [name!='South Congress Cafe']
      [name!='Summermoon Coffee Bar']
      [name!='Tacodeli']
      [name!='Uchiko']
      [name!='Whole Foods']
      [name!="Torchy's Tacos"] {        
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
    text-character-spacing: 0.25;
    [maki!=null] { text-dy: 14; }
      }
  }
}