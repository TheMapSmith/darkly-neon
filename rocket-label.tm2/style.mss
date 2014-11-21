@land:  rgb(48, 37, 75);

@rail_bright: rgb(229,47,53);
@water_bright: rgb(186, 237, 243 );

@fallback: 'Open Sans Regular';
@sans_black: 'Avenir Black', @fallback;

Map {
  background-color: @land;
}

#rocket { 
  ::marker {  
    marker-file: url('rocket-24-solid.svg');
    marker-fill: @rail_bright;
    marker-line-color: @water_bright;
    marker-allow-overlap: true;
    [zoom>=16] {
      marker-height: 72;  
      marker-line-width: 3; }
    [zoom>=18] {
      marker-height: 94;  
      marker-line-width: 5; }
      } //end marker
  
  ::label {
    text-name: "'AVAST'";
    text-face-name: @sans_black;
    text-fill: @rail_bright;
    text-halo-fill: @water_bright;
    text-allow-overlap: true;
    [zoom>=16] {
      text-size: 50;
      text-halo-radius: 5;
      text-dx: 15;
      text-dy: 15;
      
      }
    [zoom>=18] {
      text-size: 80;
      text-halo-radius: 8;
      text-dx: 35;
      text-dy: 30;
      }
    }
  }
