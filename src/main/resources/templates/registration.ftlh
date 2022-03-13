<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="mb-3">
        <h3>Add new user</h3>
    </div>
    <h4>${message?ifExists}</h4>
    <@l.login "/registration" true/>

</@c.page>