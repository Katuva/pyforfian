<%include file="head.mak"/>
<body>
  <%include file="js-includes.mak"/>
  <script language="javascript">
    $(document).ready(function() {
      $('[rel=popover]').popover();

      $('#forgotpassword_btn').click(function() {
        $('#login').slideUp(function() {
          $('#forgotpassword').slideDown();
        });
      });

      $('#cancel_btn').click(function() {
        $('#forgotpassword').slideUp(function() {
          $('#login').slideDown();
        });
      });

      $('[data-loading-text]').click(function() {
        $(this).button('loading');
        $(':button').addClass('disabled').attr('disabled', 'disabled');
      });

      $('#login_btn').click(function() {
        // Call AJAX here...
      });
    });
  </script>
  <header style="background-color: #000000">
    <img src="${request.static_url('pyforfian:static/images/main-logo.png')}" width="400" height="88" alt="{PyForfian}"/>
  </header>
  <br />
  <br />
  <div class="container">
    <div class="row">
      <div class="span5 offset3 well">
        <div id="login">
          <form method="post" action="/login">
            <h3>Please log in:</h3>
            <div class="control-group">
              <div class="controls">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-user"></i></span>
                  <input class="input-xlarge" id="username" type="text" name="username" placeholder="Username..." rel="popover" data-trigger="focus" data-original-title="Username:" data-content="Must be at least 5 characters long." required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-asterisk"></i></span>
                  <input class="input-xlarge" id="password" type="password" name="password" placeholder="Password..." rel="popover" data-trigger="focus" data-original-title="Password:" data-content="Must be at least 6 characters long, containing at least 1 upper-case letter and 1 number." required/>
                </div>
              </div>
            </div>
              <div class="control-group">
                <div class="controls">
                  <label class="checkbox">
                    <input type="checkbox"> Remember me
                  </label>
                  <br />
                  <button type="button" id="login_btn" class="btn btn-primary" data-loading-text="Logging in...">Log in</button>
                  <button class="btn btn-danger" type="button" id="forgotpassword_btn">Forgot Password?</button>
                </div>
            </div>
          </form>
        </div>
        <div id="forgotpassword" style="display: none">
          <form method="post" action="/forgotpassword">
            <h3>Please enter details:</h3>
            <div class="control-group">
              <div class="controls">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-user"></i></span>
                  <input class="input-xlarge" id="username" type="text" name="username" placeholder="Username..." rel="popover" data-trigger="focus" data-original-title="Username:" data-content="Must be at least 5 characters long." required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-envelope"></i></span>
                  <input class="input-xlarge" id="emailaddress" type="text" name="emailaddress" placeholder="Email Address..." required/>
                </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <br />
                <button type="button" class="btn btn-primary" data-loading-text="Working...">Reset Password</button>
                <button class="btn btn-danger" type="button" id="cancel_btn">Cancel</button>
              </div>
              <br />
              <div class="alert alert-info">
                An email will be sent to your registered address with a password reset link.
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <%include file="footer.mak"/>
</body>
</html>
