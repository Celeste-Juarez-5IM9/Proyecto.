$(function() {
  $( "#input-submit" ).click(function() {
    $( "#input-submit" ).addClass( "onclic", 250, validate);
  });

  function validate() {
    setTimeout(function() {
      $( "#input-submit" ).removeClass( "onclic" );
      $( "#input-submit" ).addClass( "validate", 450, callback );
    }, 2250 );
  }
    function callback() {
      setTimeout(function() {
        $( "#input-submit" ).removeClass( "validate" );
      }, 1250 );
    }
  });