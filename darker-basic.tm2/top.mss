#poi_label[zoom>=18] {
  ::Topicon[maki!=null] {
    [name='Blind Pig'],
      [name='Parish'],
      [name='Iron Cactus'],
      [name='The Driskill'],
      [name='HandleBar'] {
      marker-fill:@park_bright;
      marker-file:url('icon/[maki]-24.svg');
      marker-height: 30;
      }
  }
  ::Toplabel {
    [name='Blind Pig'],
      [name='Parish'],
      [name='Iron Cactus'],
      [name='The Driskill'],
      [name='HandleBar'] {
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