<#import "parts/common.ftlh" as c>

<@c.page>
    <form class="row row-cols-lg-auto g-3 align-items-center mt-1 mb-3" method="get" action="/main">
        <div class="col-10">
            <button class="btn btn-outline-secondary" type="submit">Найти</button>
        </div>
        <div>
            <label class="visually-hidden" for="inlineFormInputGroupUsername">Найти</label>
            <div class="input-group">
                <input type="text" class="form-control" name="filter" id="inlineFormInputGroupUsername"
                       value="${filter?ifExists}">
            </div>
        </div>
    </form>
    <div>
        <form method="post" enctype="multipart/form-data">
            <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">Тэг</span>
                <input type="text" class="form-control" aria-label="Sizing example input"
                       name="tag" placeholder="Тэг" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text" id="inputGroup-sizing-default">Сообщение</span>
                <input type="text" class="form-control" aria-label="Sizing example input"
                       name="text" placeholder="Введите сообщение" aria-describedby="inputGroup-sizing-default">
            </div>
            <div class="input-group mb-3">
                <input type="file" class="form-control" id="inputGroupFile01" name="file"
                       placeholder="Файл не выбран (не обязательно)">
            </div>
            <div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-outline-secondary">Добавить</button>
            </div>
        </form>
    </div>






    <div class="card mt-3">
        <h5 class="card-header">List of Messages</h5>
        <#list messages as message>
            <div class="card mt-1 mx-1">
                <h5 class="card-header">${message.authorName}</h5>
                <div class="card-body p-1">
                    <div class="card">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">${message.tag}</h5>
                                    <p class="card-text">${message.text}</p>
                                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                            <#if message.filename??>
                                <div class="col-md-4 p-1">
                                    <img src="/img/${message.filename?ifExists}"class="img-fluid rounded-start" alt="...">
                                </div>

                            </#if>
                        </div>
                    </div>

                </div>
            </div>
        <#else>
            <div class="card-body">
                No message
            </div>
        </#list>
    </div>




</@c.page>