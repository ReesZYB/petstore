<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header.jsp"%>
<div class="row container">
    <%@ include file="sidebar.jsp"%>
    <div class="col-9">
        <div class="card">
            <div class="card-header">
                <h6>个人信息</h6>
            </div>
            <div class="card-body">
                <form action="${ctx}/EditUserServlet" method="post">
                    <div class="form-group col-6">
                        <label class="form-control-label">用户名称</label>
                        <input type="text" class="form-control" name="username" value="${user.username}" >
                    </div>
                    <div class="form-group col-6">
                        <label class="form-control-label">Email</label>
                        <input type="email" class="form-control" name="email" value="${user.email}" >
                    </div>
                    <div class="form-group col-6">
                        <label class="form-control-label">真实姓名</label>
                        <input type="text" class="form-control" name="realname" value="${user.realname}" >
                    </div>
                    <div class="form-group col-6">
                        <label class="form-control-label">手机号码</label>
                        <input type="text" class="form-control" name="phone" value="${user.phone}" >
                    </div>
                    <div class="form-group col-6">
                        <label class="form-control-label">联系地址</label>
                        <textarea name="address" class="form-control" rows="2" >${user.address}</textarea>
                    </div>
                    <div class="form-group col-6">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="submit" class="btn btn-primary form-group col-12" value="保存">
                    </div>
                </form>
                <div class="text-center">
                    <span class="text-danger">${msg}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>