$(document).ready(function(){ 

  // User edit 
    $('#driver_user_company_driver, #driver_user_owner_operator, #driver_user_owner_operator_pbm').on('change', function() {
      $('#driver_user_company_driver, #driver_user_owner_operator, #driver_user_owner_operator_pbm').not(this).prop('checked', false);  
  });


  $('#message_text').keypress(function(e){
    if(e.which == 13){
         $(this).closest('form').submit();
     }
  });

}); // documet ready