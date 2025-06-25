<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.model.Robot" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>机器人列表</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1 class="my-4">智能机器人列表</h1>
        
        <div class="row">
            <%
                // 模拟数据 - 实际应从数据库获取
                List<Robot> robotList = List.of(
                    new Robot(1, "AlphaBot", "服务机器人", "家庭助手机器人", "robot1.jpg"),
                    new Robot(2, "WorkerX", "工业机器人", "重型工业机器人", "robot2.jpg"),
                    new Robot(3, "MediBot", "医疗机器人", "手术辅助机器人", "robot3.jpg")
                );
                request.setAttribute("robotList", robotList);
                
                for (Robot robot : robotList) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title"><%= robot.getName() %></h5>
                        <p class="card-text"><strong>类型：</strong> <%= robot.getType() %></p>
                        <a href="detail.jsp?id=<%= robot.getId() %>" class="btn btn-primary">查看详情</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
