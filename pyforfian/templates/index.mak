<%include file="head.mak"/>
<body>
  <%include file="js-includes.mak"/>
  <header style="background-color: #000000">
    <img src="${request.static_url('pyforfian:static/images/main-logo.png')}" width="400" height="88" alt="{PyForfian}"/>
  </header>
  <br />
  <br />
  <div class="container">
    <div class="row">
      <div class="span5 offset3">
        <form method="post" action="/login" class="well">
          <div class="control-group">
            <div class="controls">
              <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input class="input-xlarge" id="inputIcon" type="text" name="username" placeholder="Username..." required/>
              </div>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <div class="input-prepend">
                <span class="add-on"><i class="icon-asterisk"></i></span>
                <input class="input-xlarge" id="inputIcon" type="password" name="password" placeholder="Password..." required/>
              </div>
            </div>
          </div>
            <div class="control-group">
              <div class="controls">
                <label class="checkbox">
                  <input type="checkbox"> Remember me
                </label>
                <br />
                <button type="submit" class="btn btn-primary">Log in</button>
                <a class="btn btn-danger" href="/forgotpassword">Forgot Password?</a>
              </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <%include file="footer.mak"/>
</body>
</html>
