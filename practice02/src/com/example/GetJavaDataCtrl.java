package com.example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GetJavaDataCtrl.do")
public class GetJavaDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] names = {"가", "나", "다", "라"};
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("마");
		list.add("바");
		list.add("사");
		list.add("아");
		
		HashMap<String, String> map = new HashMap<>();
		map.put("name1", "자");
		map.put("name2", "차");
		map.put("name3", "카");
		map.put("name4", "타");
		
		HashMap<String, String> map2 = new HashMap<>();
		map2.put("name", "파");
		map2.put("age", "100");
		map2.put("height", "200");
		
		Human vo = new Human();
		vo.setName("가가");
		vo.setCountry("대한민국");
		vo.setAge(30);
		vo.setHobby("다다");
		
		ArrayList<Human> hList = new ArrayList<Human>();
		Human human = new Human();
		human.setName("나나");
		human.setCountry("미국");
		human.setAge(100);
		human.setHobby("라라");

		Human human2 = new Human();
		human2.setName("마마");
		human2.setCountry("일본");
		human2.setAge(60);
		human2.setHobby("바바");
		
		Human human3 = new Human();
		human3.setName("사사");
		human3.setCountry("중국");
		human3.setAge(7);
		human3.setHobby("아아");
		
		request.setAttribute("names", names);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("map2", map2);
		request.setAttribute("vo", vo);
		request.setAttribute("hList", hList);
		
		RequestDispatcher view = request.getRequestDispatcher("06getJavaData.jsp");
		view.forward(request, response);
		
	}

}
