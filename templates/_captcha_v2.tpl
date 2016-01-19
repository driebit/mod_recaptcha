{#
    Recaptcha v2 template
    Author: 
        * for the script: the reCAPTCHA team of Google
#}
{% if m.recaptcha.is_enabled %}
    {% with m.recaptcha.public_key as public_key %}
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <div class="g-recaptcha" data-sitekey="{{ public_key|urlencode }}"></div>
    {% endwith %}
{% endif %}

