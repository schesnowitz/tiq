$(document).ready(function(){ 
  

// <!--sets :truck_type column as hidden field for record keeping in case truck 
// is removed from system-->
 
   
  $(function() {      
    $("#select-driver").change(function() {  
      $('#all_truck_truck_info').val(this.value);  
      var dropValue = $("#all_truck_truck_info option:selected").text();
      $('#load_equipment_type').val(dropValue); 
    });
  });



// <!--sets the truck number-->
 
 
  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_number').val(this.value);  
      var truckNumber = $("#truck_number option:selected").text();
      $('#the_truck_number').html(truckNumber);   
      $('#load_truck_number').val(truckNumber);  
    }); 
  });



// <!--sets the truck year based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_year').val(this.value);  
      var truckYear = $("#truck_year option:selected").text();
      $('#the_truck_year').html(truckYear);  
      $('#load_truck_year').val(truckYear);  
    }); 
  });

 

// <!--sets the truck make based on driver selected-->
 
  
  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_make').val(this.value);  
      var truckMake = $("#truck_make option:selected").text();
      $('#the_truck_make').html(truckMake);  
      $('#load_truck_make').val(truckMake); 
    });
  });



// <!--sets the truck model based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_model').val(this.value);   
      var truckModel = $("#truck_model option:selected").text(); 
      $('#the_truck_model').html(truckModel); 
      $('#load_truck_model').val(truckModel); 
    });
  });



// <!--sets the truck color based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_color').val(this.value);   
      var truckColor = $("#truck_color option:selected").text(); 
      $('#the_truck_color').html(truckColor);    
      $('#load_truck_color').val(truckColor);  
    });
  });





// <!--sets the truck plate based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_plate').val(this.value);   
      var truckPlate = $("#truck_plate option:selected").text();
      $('#the_truck_plate').html(truckPlate);   
      $('#load_truck_plate').val(truckPlate);   
    });
  });


// <!--sets the truck plate state based on driver selected-->
 
  
  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_state').val(this.value);   
      var truckState = $("#truck_state option:selected").text();
      $('#the_truck_state').html(truckState);
      $('#load_truck_state').val(truckState);  
    });
  });



// <!--sets the truck MP based on driver selected-->
 
 
  $(function() {      
    $("#select-driver").change(function() {  
      $('#truck_mpg').val(this.value);   
      var truckState = $("#truck_mpg option:selected").text();
      $('#the_truck_mpg').html(truckState);
      $('#load_truck_mpg').val(truckState);  
    });
  });





// <!--adds warning color to truck info if driver has no truck assigned-->
 

  $("#select-driver").change(function() { 
  var check = function(){
      setTimeout(check, 200);    
    if ($('#the_truck_make').is(':empty')) { 

            // console.log("Empty"); 
  $('#noTruck').css('background-color', '#ffb3b3'); 
  $( "#noTruckText" ).removeClass( "hidden" );
    $( "#noTruckText" ).show();
    } else {
          // console.log("not empty");
        
    $('#noTruck').css('background-color', '#e6ffe6');   
     $( "#noTruckText" ).hide();  
  }
}
check();

  });


 


    $('select[id="select-driver"]').change(function() {
        var str = $('select[id="select-driver"] option:selected').text();
        if (str.length > 15 ) {   
          console.log("length is greater than 15");  
            $('#hideThisStuff').show();   
        } else {
                      $('#hideThisStuff').hide();  
          }
    });

 

// END DRIVER TRUCK NEW

// START TRAILER INPUTS


    $(function() {        
      $("#select-driver").change(function() {  
        $('#all_truck_trailer_info').val(this.value);  
        var dropValue = $("#all_truck_trailer_info option:selected").text();
        $('#load_equipment_type').val(dropValue); 
      });
    });



// <!--sets the driver rate per mile based on driver selected in drop down-->

 
  $(function() {     
    $("#select-driver").change(function() {  
      $('#load_driver_user_id').val(this.value); 
      var dropValue = $("#load_driver_user_id option:selected").text();
      $('#load_driver_cents_pm').val(dropValue); 
    });
  });




// <!--sets the trailer number based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_number').val(this.value);  
      var trailerNumber = $("#trailer_number option:selected").text();
      $('#the_trailer_number').html(trailerNumber);     
      $('#load_trailer_number').val(trailerNumber);
    }); 
  });



// <!--sets the trailer year based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_year').val(this.value);  
      var trailerYear = $("#trailer_year option:selected").text();
      $('#the_trailer_year').html(trailerYear);
      $('#load_trailer_year').val(trailerYear); 
    }); 
  });




// <!--sets the trailer make based on driver selected-->
 
   
  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_make').val(this.value);  
      var trailerMake = $("#trailer_make option:selected").text();
      $('#the_trailer_make').html(trailerMake); 
      $('#load_trailer_make').val(trailerMake);  
    });
  });



// <!--sets the trailer type based on driver selected-->
 
 
  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_type').val(this.value);   
      var trailerType = $("#trailer_type option:selected").text();
      $('#the_trailer_type').html(trailerType);
      $('#load_trailer_type').val(trailerType); 
    });
  });



// <!--sets the trailer length based on driver selected-->
 

  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_length').val(this.value);   
      var trailerLength = $("#trailer_length option:selected").text(); 
      $('#the_trailer_length').html(trailerLength);  
      $('#load_trailer_length').val(trailerLength);
    });
  });


// <!--sets the trailer door type based on driver selected-->
 
 
  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_door_type').val(this.value);   
      var trailerDoor = $("#trailer_door_type option:selected").text();  
      $('#the_trailer_door_type').html(trailerDoor);
      $('#load_trailer_door_type').val(trailerDoor);     
    });
  });



// <!--sets the trailer plate based on driver selected-->
 
  
  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_plate').val(this.value);   
      var trailerPlate = $("#trailer_plate option:selected").text();
      $('#the_trailer_plate').html(trailerPlate); 
      $('#load_trailer_plate').val(trailerPlate); 
    });
  });



 
 
  $(function() {      
    $("#select-driver").change(function() {  
      $('#trailer_state').val(this.value);   
      var trailerState = $("#trailer_state option:selected").text();
      $('#the_trailer_state').html(trailerState);
      $('#load_trailer_state').val(trailerState);
    });
  });




// <!--adds warning color to trailer info if driver has no truck assigned-->
 
  $("#select-driver").change(function() { 
  var check = function(){
      setTimeout(check, 200);    
    if( $('#the_trailer_make').is(':empty') ) { 
            // console.log("Empty"); 
  $('#noTrailer').css('background-color', '#ffb3b3'); 
  $( "#noTrailerText" ).removeClass( "hidden" )
    $( "#noTrailerText" ).show();
    } else {
          // console.log("not empty");
        
    $('#noTrailer').css('background-color', '#e6ffe6');  
     $( "#noTrailerText" ).hide(); 
  }
}
check();
  })


// END TRAILER NEW

// SHOW HIDE INPUTS




    $('select[id="select-driver"]').change(function() {
        var str = $('select[id="select-driver"] option:selected').text();
        if (str.indexOf("Company") >= 0) { 
            $('#hideCents, #hideCalculation').fadeIn( "slow" );
        } else {
            $('#hideCents, #hideCalculation').fadeOut( "slow" );  
        }
    });





    $('select[id="select-driver"]').change(function() {
        var str = $('select[id="select-driver"] option:selected').text();
        if (str.indexOf("Owner") >= 0) { 
            $('#showToOwnerOperators').fadeIn( "slow" );
        } else {
            $('#showToOwnerOperators').fadeOut( "slow" );  
        }
    });




// <!--hides destination address when mult addresses is selected-->


  
$('#load_has_multiple_pd').on('click', function(){
    if ( $(this).is(':checked') ) {
        $("#idToHide, #idToHide2, #idToHide3, #hideCalculation").hide("slow");
    } 
    else {
        $("#idToHide, #idToHide2, #idToHide3, #theSubmitButton").show("slow");  
    }
  });




// <!--keeps destination address fields hidden on error as box reloads as checked-->


  if ($('#load_has_multiple_pd').is(':checked')){
      $("#idToHide, #idToHide2, #idToHide3").hide(); 
  }





  
$('#load_has_multiple_pd').on('click', function(){
    if ( $(this).is(':checked') ) {
        $("#theSubmitButton").show();  
    } 

  });



    $("#load_percentage_id").change(function() {
      var percentDeducted = $("#load_percentage_id option:selected").text();   
            var invoicePrice = $("#load_invoice_price").val();   
    $("#load_percent_coverted_to_dollars").val(percentDeducted * invoicePrice); 

    });



  $("#load_invoice_price, #load_booking_fee, #load_percent_coverted_to_dollars").change(function () {
      $("#load_percentage_id").change(function () {
    var loadInvoicePrice = parseFloat($("#load_invoice_price").val());    
    var loadBookingFee = parseFloat($("#load_booking_fee").val());   
    var loadRateAfterPercent = parseFloat($("#load_percent_coverted_to_dollars").val());   
    var total = parseFloat(loadInvoicePrice - loadBookingFee - loadRateAfterPercent);

      $("#load_rate_to_owner_operator").val(total); 
      }).change();
    });




// <!--Hide buttons/show buttons-->


if($('#load_miles').val() == 0 ){$('#calcPL').hide();}  
$('#setVal').on('click' , function() {
     if( this.text != 0){
           $('#theSubmitButton, #calcPL').show("slow");
      }
      else{
           $('#calcPL').hide("slow"); 
     }
});

    
    


    
    


    $("#theSubmitButton").click(function() {    
  var loadMiles = $("#load_miles").val(); 
  var truckAverageMpg = $('#truckAveMpg').val();
  var nationalAverage = $('#load_national_average_diesel_price').val();
  var milesDivTruckAve = (loadMiles / truckAverageMpg);  

  $('#milesDivByAve').val(milesDivTruckAve); 
  $('#totalCost').val(nationalAverage * milesDivTruckAve);    
    $('#load_estimated_diesel_cost').val(nationalAverage * milesDivTruckAve);   
    });


    $('#calcPL').click(function() {    
    var loadInvoicePrice = parseFloat($("#load_invoice_price").val());   
    var loadMiles = $("#load_miles").val(); 
    var truckAverageMpg = $('#truckAveMpg').val();
    var nationalAverage = $('#load_national_average_diesel_price').val();
    var milesDivTruckAve = (loadMiles / truckAverageMpg);  
    var cents2driver = $("#load_driver_cents_pm").val();  
    $('#milesDivByAve').val(milesDivTruckAve); 
    $('#totalCost').val(nationalAverage * milesDivTruckAve);    
    $('#load_estimated_diesel_cost').val(nationalAverage * milesDivTruckAve);  
    var dieselCost = parseFloat(nationalAverage * milesDivTruckAve)
    var ratePTD = parseFloat(loadMiles * cents2driver); 
    var theTotal = parseFloat(loadInvoicePrice - dieselCost - ratePTD);

    $('#profitLoss').val(theTotal);    
    });





    $('#calcPL').click(function() {        
  var loadMiles = $("#load_miles").val();
  var centsToDriver = parseFloat($('#centolasToDriver').val($("#load_driver_cents_pm").val())); 
  var getCentolas = $('#centolasToDriver').val();
  var rateTooDriver =  parseFloat($("#rateToDriver").val(loadMiles * getCentolas));
  
    });

    





    $("#theSubmitButton").click(function() {   
  var loadMiles = $("#load_miles").val(); 

  var milesDivTruckAve = (loadMiles / truckAverageMpg);  

  $('#milesDivByAve').val(milesDivTruckAve); 
  $('#totalCost').val(nationalAverage * milesDivTruckAve);    
    $('#load_estimated_diesel_cost').val(nationalAverage * milesDivTruckAve);   
  });




    $('#calcPL').mouseover(function() {   
      
      var inv = parseFloat($('#invoicePriceParagraph').text($('#load_invoice_price').val()));     
      var dp = parseFloat($("#paymentDriver").text($('#rateToDriver').val())); 
      var diesel = parseFloat($('#fuel').text($('#load_estimated_diesel_cost').val()));  
      var zeTotal = parseFloat($('#totola').text($('#profitLoss').val()));   
    });


// END SHOW HIDE INPUTS












}); // documet ready
