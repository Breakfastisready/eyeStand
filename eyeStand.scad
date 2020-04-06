// eyeStand design, 5th April 2020




color("orange")
{
    translate([230,0,0])
        Base_stand();
    translate([-230,0,0])
        Base_stand();
   
}   

color("green")
{
    translate([0,0,400])
        UpperBody();
}


module Base_stand()
{
    
  depth = 170;
    foot_breadth = 50;
    foot_height = 10;
  cylinder_height=270;
    union(){
            
      difference()
        {
                cylinder(r = 15, h = cylinder_height, $fn = 40);
                cylinder(r = 10, h = 2*cylinder_height + 1, $fn = 40 ,center=true);
        }
        
        translate([-foot_breadth/2,-depth/2,0])
            minkowski()
            {
                cube([foot_breadth,depth,foot_height], center=false);
                cylinder(r=10, h = foot_height);
            }
            
    }
}

module UpperBody()
{
    
    union()
    {       
           difference()
            {
                  
               union()
               {
                    minkowski()
                    { 
                        cube([500,20,10],center = true);
                        cylinder(r=10, h = 10);
                    }
                    minkowski()
                    { 
                        cube([170,150,10],center = true);
                        cylinder(r=10, h = 10);
                    }
                    
               }
               
                union()
                {  wdepth = 70;
                    wbredth = 70;
                   // translate([wdepth,wbredth])
                       cube([150,130,50],center=true);
                }
            }
            
    translate([0,25,5])
        cube([165,10,20],center=true);
    translate([0,-25,5])
        cube([165,10,20],center=true);
     translate([0,0,5])
            cube([10,155,20],center=true);
            
            
     translate([230,0,-50])
            cylinder(r=9.5, h = 50);
     translate([-230,0,-50])
            cylinder(r=9.5, h = 50);
            
            
    }
}






echo(version=version());
// Written in 2020 by Mukesh and Nihar

// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
