$(".form-btn").click(function(){
    'use strict';

    var $form = $('#contact-form');

    $form.submit(function (e) {
        // remove the error class
        $('.form-group').removeClass('has-error');
        $('.help-block').remove();

        // get the form data
        var formData = {
            'fname' : $('input[name="form-fname"]').val(),
            'lname' : $('input[name="form-lname"]').val(),
            'email' : $('input[name="form-email"]').val(),
            'subject' : $('input[name="form-subject"]').val(),
            'message' : $('textarea[name="form-message"]').val()
        }; 
        // process the form
        $.ajax({
            type : 'POST',
            url  : 'php/process.php',
            data : formData,
            dataType : 'json',
            encode : true
        }).done(function (data) {
            // handle errors
            if (!data.success) {
                if (data.errors.fname) {
                    $('#fname-field').addClass('has-error');
                    $('#fname-field').find('.form-group').append('<span class="help-block">' + data.errors.fname + '</span>');
                }
                if (data.errors.lname) {
                    $('#lname-field').addClass('has-error');
                    $('#lname-field').find('.form-group').append('<span class="help-block">' + data.errors.lname + '</span>');
                }

                if (data.errors.email) {
                    $('#email-field').addClass('has-error');
                    $('#email-field').find('.form-group').append('<span class="help-block">' + data.errors.email + '</span>');
                }

                if (data.errors.subject) {
                    $('#subject-field').addClass('has-error');
                    $('#subject-field').find('.form-group').append('<span class="help-block">' + data.errors.subject + '</span>');
                }

                if (data.errors.message) {
                    $('#message-field').addClass('has-error');
                    $('#message-field').find('.form-group').append('<span class="help-block">' + data.errors.message + '</span>');
                }
            } else {
                // display success message
                $form.html('<div class="alert alert-success">' + data.message + '</div>');
            }
        }).fail(function (data) {
            // for debug
            console.log(data)
        });
        
        e.preventDefault();
    }); 
});