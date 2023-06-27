$(document).ready(function() {

  
    // Cargar regiones desde la base de datos al cargar la página
    $.ajax({
      url: "load_regions.php",
      type: "GET",
      success: function(data) {
        $('#region').html(data);
      }
    });
    
    // Actualizar comunas al seleccionar una región
    $('#region').on('change', function() {
      var regionId = $(this).val();
      console.log(regionId)
      $.ajax({
        url: "load_communes.php",
        type: "GET",
        data: { regionId: regionId },
        success: function(data) {
          $('#comuna').html(data);
        }
      });
    });
  
    // Cargar candidatos desde la base de datos al cargar la página
    $.ajax({
      url: "load_candidates.php",
      type: "GET",
      success: function(data) {
        console.log(data);
        $('#candidato').html(data);
      }
    });
  
    // Validar el formulario antes de enviarlo
    $('#votingForm').on('submit', function(e) {
      e.preventDefault();
      if (validateForm()) {
        $.ajax({
          url: "save_vote.php",
          type: "POST",
          data: $(this).serialize(),
          success: function(response) {
            alert(response);
            $('#votingForm')[0].reset();
          }
        });
      }
    });
  
    // Validar los campos del formulario con JavaScript
    function validateForm() {
      var nombre = $('#nombre').val();
      var alias = $('#alias').val();
      var rut = $('#rut').val();
      var email = $('#email').val();
      var comoEntero = $('input[name="como_entero[]"]:checked').length;
  
      if (nombre === '') {
        alert('El campo Nombre y Apellido no debe quedar en blanco.');
        return false;
      }
      if (alias.length <= 5 || !alias.match(/^[a-zA-Z0-9]+$/)) {
        alert('El campo Alias debe tener al menos 6 caracteres y contener letras y números.');
        return false;
      }
      if (!validateRut(rut)) {
        alert('El campo RUT no es válido.');
        return false;
      }
      if (!validateEmail(email)) {
        alert('El campo Email no es válido.');
        return false;
      }
      if (comoEntero < 2) {
        alert('Debe seleccionar al menos dos opciones en "Como se enteró de Nosotros".');
        return false;
      }
  
      return true;
    }
  
    // Validar el formato del RUT
    function validateRut(rut) {
        // Eliminar puntos y guión del RUT (si los contiene)
        rut = rut.replace(/\./g, "").replace(/-/g, "");
            
        // Validar el RUT utilizando el algoritmo de validación chileno
        var suma = 0;
        var factor = 2;
        var digitoVerificador = rut.charAt(rut.length - 1);
            
        for (var i = rut.length - 2; i >= 0; i--) {
          suma += parseInt(rut.charAt(i)) * factor;
          factor = factor === 7 ? 2 : factor + 1;
        }
    
        var digitoCalculado = 11 - (suma % 11);
        digitoCalculado = digitoCalculado === 11 ? 0 : digitoCalculado;
        digitoCalculado = digitoCalculado === 10 ? "K" : digitoCalculado.toString();
    
        if (digitoCalculado.toUpperCase() === digitoVerificador.toUpperCase()) {
          return true; // El RUT es válido
        } else {
          return false; // El RUT no es válido
        }
    }
  
    // Validar el formato del correo electrónico
    function validateEmail(email) {
        var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  
        // Validar el correo electrónico utilizando la expresión regular
        if (regex.test(email)) {
          return true; // El correo electrónico es válido
        } else {
          return false; // El correo electrónico no es válido
        }
    }
  });