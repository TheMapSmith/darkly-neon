@land: #3c0b53;
Map {
  background-color: @land ;
}

#centroids {
  text-fill: white;
  text-name: [Name];
  text-face-name: 'Avenir Black';
  text-size: 90;
  text-wrap-width: 200;
  text-align: center;
  text-line-spacing: -35;  
  text-halo-fill: fadeout(lighten(@land, 20), 90);
  text-halo-radius: 7;
  [Name="Capital"] {
    text-name: "'State Capital'";
    }
  
  [Name="Campus"] {
    text-name: "'UT Campus'";
    text-wrap-width: 100;
    text-line-spacing: -55;
    }
  
  [Name="Rainey"] {
    text-name: "'Rainey Street'";
    }

  [Name="West 6th"] {
    text-name: "'West 6th St'";
    }
  
  [Name="East 6th"] {
    text-name:"'East 6th St'";
    }
  
  [Name="Zilker"] {
    text-name: "'Zilker Park'";
    }
  
  [Name="So Co"] {
    text-name: "'South Congress'";
    }
}

