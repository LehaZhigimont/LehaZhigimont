<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <h3>Login </h3>
    <h4>${message?ifExists}</h4>
<@l.login "/login" false/>
</@c.page>

