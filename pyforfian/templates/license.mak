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
      <div class="span7 offset2 well">
        Copyright (c) 2013 Wesley Twyman<br /><br />

        Licensed under the Apache License, Version 2.0 (the "License");<br />
        you may not use this file except in compliance with the License.<br />
        You may obtain a copy of the License at<br /><br />

        <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">http://www.apache.org/licenses/LICENSE-2.0</a><br /><br />

        Unless required by applicable law or agreed to in writing, software<br />
        distributed under the License is distributed on an "AS IS" BASIS,<br />
        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.<br />
        See the License for the specific language governing permissions and<br />
        limitations under the License.<br /><br />
        <a class="btn btn-primary" href="javascript:history.back()">&lt; Back</a>
      </div>
    </div>
  </div>
  <%include file="footer.mak"/>
</body>
</html>