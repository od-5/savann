$(document).ajaxSend(function (event, xhr, settings) {
    function getCookie(name) {
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }

    function sameOrigin(url) {
        // url could be relative or scheme relative or absolute
        var host = document.location.host; // host + port
        var protocol = document.location.protocol;
        var sr_origin = '//' + host;
        var origin = protocol + sr_origin;
        // Allow absolute or scheme relative URLs to same origin
        return (url == origin || url.slice(0, origin.length + 1) == origin + '/') ||
            (url == sr_origin || url.slice(0, sr_origin.length + 1) == sr_origin + '/') ||
                // or any other URL that isn't scheme relative or absolute i.e relative.
            !(/^(\/\/|http:|https:).*/.test(url));
    }

    function safeMethod(method) {
        return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
    }

    if (!safeMethod(settings.type) && sameOrigin(settings.url)) {
        xhr.setRequestHeader("X-CSRFToken", getCookie('csrftoken'));
    }
});

function sendForm(options, form, onSuccess, onError, onErrorAjax) {
    $.ajax({
        type: "POST",
        url: '/ru/ajax',
        contentType: 'application/json; charset=utf-8',
        data: $.toJSON(options),
        dataType: 'json',
        success: function (data) {
            if (data['success']) {
                onSuccess ? onSuccess(data, form) : false;
            }
            else {
                onError ? onError(data, form) : false;
            }
        },
        error: function (data) {
            onErrorAjax ? onErrorAjax() : false;
        }
    });
}

$(function () {
    $.fn.serializeObject = function () {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function () {
            if (o[this.name] !== undefined) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };
});

$(function () {

    $('#submit').click(function (e) {
        e.preventDefault();
        var form = $(this).parents('form');
        var status = true;
        form.find('input:required, textarea:required').each(function () {
            if (!$(this).val() && $(this).attr('type') != 'search') {
                status = false;
                $(this).addClass('error');
            }
            else {
                $(this).removeClass('error')
            }
        });
        if (status) {
            sendForm(form.serializeObject(), form, successSend, errorSend)
        }
        else form.find('input.error').first().focus()
    });
    $('*:not(#success)').click(function(){
        $('#success').hide();
    });

});

function successSend(data, form) {
    form[0].reset();
    $('#success').fadeIn(500, function(){
        setTimeout(function(){
            $('#success').fadeOut(500, function(){
            });
        }, 5000);
    });
    //errorSend(data, form);
}
function errorSend(data, form) {
    //form.find('button').css('visibility', 'visible');
    //form.find('.preloader').css('visibility', 'hidden');

}


function getCookie(name) {
    var matches = document.cookie.match(new RegExp("(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}