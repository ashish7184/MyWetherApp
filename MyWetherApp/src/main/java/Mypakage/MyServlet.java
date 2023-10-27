package Mypakage;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Date;
import java.util.Scanner;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String InputData=request.getParameter("userInput");
//		System.out.println(InputData);
//		this is api setup
		try {
			String Apikey="4a2f4b728bd6effb2b277fdcba40516b";
//			this data is fatch in from
			String city=request.getParameter("city");
//			create a url from the openweather map Api request
	        String Api_url="https://api.openweathermap.org/data/2.5/weather?q="+city+"&appid="+Apikey+"";
//	        url integration
	        URL url=new URL(Api_url);
	        HttpsURLConnection conection=(HttpsURLConnection)url.openConnection();
	        conection.setRequestMethod("GET");
//	        Reading data form network
	        InputStream inputSetream =conection.getInputStream();
	        InputStreamReader reader=new InputStreamReader(inputSetream);
//	        want to store in string 
	        StringBuilder ResposeContent=new StringBuilder();
	        Scanner scanner=new Scanner(reader);
	        while(scanner.hasNext()) {
	        	ResposeContent.append(scanner.nextLine());
	        }
	        scanner.close();
//	        type casting and parsing the data in json
	        Gson gson=new Gson();
	        JsonObject jsonObject=gson.fromJson(ResposeContent.toString(), JsonObject.class);
	        long dateTimestap=jsonObject.get("dt").getAsLong();
	        String Date =new Date(dateTimestap).toString();
	        
	        double temperatureKelvin=jsonObject.getAsJsonObject("main").get("temp").getAsDouble();
	        int temp=(int)(temperatureKelvin-273.15);
	        
	        int humidity=jsonObject.getAsJsonObject("main").get("humidity").getAsInt();
	        
	        double windSpeed=jsonObject.getAsJsonObject("wind").get("speed").getAsDouble();
	        
	        String weatherCondi=jsonObject.getAsJsonArray("weather").get(0).getAsJsonObject().get("main").getAsString();
	        
	        request.setAttribute("date",Date);
	        request.setAttribute("city", city);
	        request.setAttribute("temparature", temp);
	        request.setAttribute("humidity",humidity);
	        request.setAttribute("windSpeed", windSpeed);
	        request.setAttribute("WeatherCond", weatherCondi);
	        
	        conection.disconnect();
	        request.getRequestDispatcher("index.jsp").forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
