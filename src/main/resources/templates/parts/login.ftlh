<#macro login path isRegisterForm>

    <form class="mb-3" action="${path}" method="post">
        <div class="col-sm-6">
            <label class="form-label"> User Name :</label>
            <div class="form-control">
                <input class="form-control" type="text" name="username"/>
            </div>
        </div>
        <div class="col-sm-6 mt-2">
            <label class="form-label"> Password:</label>
            <div class="form-control">
                <input class="form-control" type="password" name="password"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="col-sm-6 mt-2">
                <label class="form-label"> Email:</label>
                <div class="form-control">
                    <input class="form-control" type="email" name="email"/>
                </div>
            </div>
        </#if>
        <!--<div class="mb-3 mt-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>-->
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary mt-3" type="submit">
            <#if !isRegisterForm>
                Sign In
            <#else>
                Registration
            </#if>
        </button>
        <#if !isRegisterForm>
            <form action="/registration">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <a href="/registration" class="btn btn-primary mt-3">Add new User</a>
            </form>
        </#if>
    </form>


</#macro>

<#macro logoutBtn>

    <div class="mx-2">
        <form class="mr-10" action="/" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-outline-primary" type="submit">Sign Out</button>
        </form>
    </div>
</#macro>

<#macro loginBtn>

    <div class="mx-2">
        <a href="/login" class="btn btn-outline-primary">Sign In</a>
    </div>
</#macro>


<!-- From is registration

<form class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="inputCity">
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">State</label>
    <select id="inputState" class="form-select">
      <option selected>Choose...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form>
-->