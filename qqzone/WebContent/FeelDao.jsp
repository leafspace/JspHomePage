<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="qqzone.database.util.DBUtil"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<body>
		<%	//心情的相关操作 
			request.setCharacterEncoding("UTF-8");
			String flag = request.getParameter("flag");
			if("zone".equals(flag)) { 
				//查询首页所需数据 - 心情Id  title  时间   发心情者 
				String sql = "select f.feelId, f.feelTitle, f.feelTime, u.userName " + 
							 "from feel f, user u " +
							 "where f.userId = u.userId " + 
							 "order by f.feelTime desc ";
				DBUtil.getPstmt(sql);
				ResultSet rs = DBUtil.query();
				//集合 - 相当于数组
				ArrayList<ArrayList<Object>> feels = new ArrayList<>();		//可能有若刚心情
				while(rs.next()) {
					ArrayList<Object> feel = new ArrayList<>();		//每一行都为一条心情
					feel.add(rs.getInt(1));
					feel.add(rs.getString(2));
					feel.add(rs.getTimestamp(3));
					feel.add(rs.getString(4)); 
					feels.add(feel);
				}
				DBUtil.allClose();
				
				request.setAttribute("feels", feels);
				request.getRequestDispatcher("/zone.jsp")
					   .forward(request, response);
			}
		%>
	</body>
</html>