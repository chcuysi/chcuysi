package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class recipeController {
	
	
	
	
	@RequestMapping("recipe")
	public String apple(Model apple,HttpServletRequest http) {
		String recipe = http.getParameter("recipe");
		
		System.out.println("매핑 스캔 성공");
		
		switch(recipe) {
		case "gofood" : 
		apple.addAttribute("name","못난이 감자와 고구마칩");
		apple.addAttribute("detail","우리에게 가장 익숙한 감자와 고구마로 더 건강한 칩을 만드실 수 있습니다");
		apple.addAttribute("say","세상에서 가장 순수하고, 맛있고, 행복한 칩를 만들자는 다짐");
		apple.addAttribute("type","goSingProduct");
		apple.addAttribute("jaryu","감자3개, 고구마3개");
		apple.addAttribute("jaryu1","허브솔트, 슈가파우더");
		apple.addAttribute("head","[오븐요리]제철고구마와 감자로 고구마칩과 감자칩 만들기");
		apple.addAttribute("mun1","고구마는 껍질을 제거하지 말고 깨끗하게 씻어서 준비하고 감자는 껍질을 제거해서 준비합니다.");
		apple.addAttribute("mun2","채칼말고 슬라이스 칼이라고 있어요 오늘은 요걸로 쉽게 만들어 볼께요.");
		apple.addAttribute("mun3","슬라이스칼을 이용해서 감자를 슬라이스해줍니다.");
		apple.addAttribute("mun4","슬라이스칼로 썬 감자는 찬물에 10분정도 담구어서 전문을 빼줍니다.");
		apple.addAttribute("mun5","고구마도 슬라이스칼을 이용해서 슬라이스해줍니다.");
		apple.addAttribute("mun6","고구마도 찬물에 10분정도 담구어 전분을 빼주세요.");
		apple.addAttribute("mun7","찬물에 담구었던 감자와 고구마는 체에 걸러서 물기를 제거해주시고 남은 물기는 키친타올을 이용해서 남은 물기를 빼줍니다.");
		apple.addAttribute("mun8","슬라이스한 감자와 고구마를 오븐틀에 올린후 감자는 허브솔트를! 고구마는 슈가파우더를 뿌려줍니다.");
		apple.addAttribute("mun9","오븐에 넣고 200도 온도에서 15분정도 돌려줍니다. 15분후 다시뒤집어서 2-3분 돌려줍니다.");
		apple.addAttribute("mun10","오븐으로 바삭하게 구웠어요^^.");
		apple.addAttribute("mun11","요렇게 해서 감자칩과 고구마칩이 완성이 되었어요^^");
		apple.addAttribute("url","https://www.youtube.com/results?search_query=%EA%B0%90%EC%9E%90%EC%B9%A9%EB%A7%8C%EB%93%A4%EA%B8%B0");
		}
	
		switch(recipe) {
		case "gofoods" :
		apple.addAttribute("name","못난 양송이 스프");
		apple.addAttribute("detail","못난 양송이로 만들었지만, 맛 하나는 최고!");
		apple.addAttribute("say","세상에서 제일 못났지만, 맛 하나는 보장한다");
		apple.addAttribute("type","yangProduct");
		apple.addAttribute("head","[후라이팬 요리]간편하고 맛있는 양송이 스프 만들기");
		apple.addAttribute("jaryu","양송이 6개,양파 반개,마늘1개");
		apple.addAttribute("jaryu1","밀가루,버터,우유,생크림,소금,후추");
		apple.addAttribute("mun1","양송이와 양파, 깐마늘은 다져서 준비해주세요.");
		apple.addAttribute("mun2","팬에 올리브유나 버터 1스푼을 두르고 다진마늘을 볶다가 양송이와 양파도 넣고 볶아주세요.");
		apple.addAttribute("mun3","볶은 양송이,양파,마늘은 따로 그릇에 뺴놓고 팬을 정리한 후 루를 만들어볼께요.");
		apple.addAttribute("mun4","먼저 버터 2스푼을 팬에 녹여주시는데 센불에서 녹이면 금방 타버릴 수 있기에 약한불에서 녹입니다.");
		apple.addAttribute("mun5","잘 녹인 버터에 밀가루 2스푼,우유 1스푼을 넣고 재빠르게 볶아주시면 루 완성!!");
		apple.addAttribute("mun6","루를 그릇에 담아놓은 볶은 양송이,양파,마늘을 넣고 우유 500ml를 부어주세요.");
		apple.addAttribute("mun7","생크림도 250ml 부어줍니다.");
		apple.addAttribute("mun8","스프가 눌러붙지 않게 잘 저어주면 농도가 맞을 때 까지 졸여줍니다.");
		apple.addAttribute("mun9","어느 정도 농도가 맞으면 소금과 후추로 마무리를 지어줍니다.");
		apple.addAttribute("mun10","팁: 루를 만들 때 약한 불에 팬을 기울여서 만드시면 잘 타지 않고 빠르게 녹습니다.");
		apple.addAttribute("mun11","주의사항: 스프가 냄비바닥에 붙지 않게 잘 저어주어야 맛있는 스프가 만들어집니다.");
		apple.addAttribute("url","https://www.youtube.com/results?search_query=%EC%96%91%EC%86%A1%EC%9D%B4%EC%8A%A4%ED%94%84%EB%A7%8C%EB%93%A4%EA%B8%B0");
		}
		

		switch(recipe) {
		case "good" :
		apple.addAttribute("name","감자전");
		apple.addAttribute("detail","못난 감자로 만들었지만, 맛 하나는 최고!");
		apple.addAttribute("say","세상에서 제일 못났지만, 맛 하나는 보장한다");
		apple.addAttribute("type","gamProduct");
		apple.addAttribute("head","[후라이팬 요리]간편하고 맛있는 감자전 만들기");
		apple.addAttribute("jaryu","중간 크기 감자 4개");
		apple.addAttribute("jaryu1","소금");
		apple.addAttribute("mun1","준비한 감자를 물에 씻습니다.");
		apple.addAttribute("mun2","씻은 감자의 껍질을 벗겨 준비합니다.");
		apple.addAttribute("mun3","씻은 감자는 물기를 적당히 제거해주신 다음에 강판에 갈아줍니다.");
		apple.addAttribute("mun4","강판에 갈린 감자를 채반에 받혀 물기를 제거해줍니다.");
		apple.addAttribute("mun5","물기 빼는건는 10분에서 15분 정도가 적당합니다.");
		apple.addAttribute("mun6","물기가 적당하게 빠진 감자에 소금과 기호에 맞는 밀가루,부침가루를 넣어줍니다.");
		apple.addAttribute("mun7","팬에 기름을 살짝 두른 후 중불에서 앞뒤로 뒤집으면서 노릇하게 구워줍니다.");
		apple.addAttribute("mun8","기호에 따라서 채소를 추가하셔도 좋습니다.");
		apple.addAttribute("mun9","집에 강판이 없으시다면 감자를 짤라서 믹서기에 갈아도 됩니다.");
		apple.addAttribute("mun10","집에 강판과 믹서기가 없다면 감자를 채 썰어서 만들어도 됩니다.");
		apple.addAttribute("mun11","양념장은 양조간장 2큰술,식초 1큰술, 물 1큰술, 고추,통깨를 넣으시면 됩니다.");
		apple.addAttribute("url","https://www.youtube.com/results?search_query=%EA%B0%90%EC%9E%90%EC%A0%84%EB%A7%8C%EB%93%A4%EA%B8%B0");
		}
		
		switch(recipe) {
		case "gofoo" :
		apple.addAttribute("name","봄동사과무침");
		apple.addAttribute("detail","못난 사과로 만들었지만, 맛 하나는 최고!");
		apple.addAttribute("say","세상에서 제일 못났지만, 맛 하나는 보장한다");
		apple.addAttribute("type","sacProduct");
		apple.addAttribute("head","[무침 요리]간편하고 맛있는 봄동 사과 무침 만들기");
		apple.addAttribute("jaryu","사과 1개, 봄동 1개");
		apple.addAttribute("jaryu1","고춧가루,멸치액젓,다진마늘,매실청,식초,설탕,깨소금,참기름");
		apple.addAttribute("mun1","봄동 한 개를 뿌리 쪽을 잘라서 잎을 한 잎씩 따서 흐르는 물에 씻어 건져 물기를 빼줍니다.");
		apple.addAttribute("mun2","사과는 베이킹소다나 식초에 넣어 깨끗이 씻어 줍니다.");
		apple.addAttribute("mun3","세척한 사과는 껍질까지 사용할 거라 깨끗하게 씻어줘야합니다.");
		apple.addAttribute("mun4","봄동 잎은 손으로 쭉쭉 찢어줍니다");
		apple.addAttribute("mun5","양념은 고춧가루 3스푼,멸치액젓 1스푼,다진마늘 1스푼,매실청 1스푼,식초 1스푼,설탕 1스푼,깨소금 1스푼, 참기름 1스푼을 섞어줍니다.");
		apple.addAttribute("mun6","찢어둔 봄동에 양념을 넣습니다.");
		apple.addAttribute("mun7","살살 버무린 후에 채 썰어두었던 사과를 넣습니다.");
		apple.addAttribute("mun8","사과에도 양념이 묻도록 다시 한번 살살 버무려줍니다.");
		apple.addAttribute("mun9","마지막으로 준비해두었던 참기름을 넣어줍니다.");
		apple.addAttribute("mun10","팁 : 파를 넣으시면 더욱 맛있는 봄동사과무침을 드실 수 있습니다.");
		apple.addAttribute("mun11","팁 : 밥과 드시면 더욱 맛있습니다.");
		apple.addAttribute("url","https://www.youtube.com/results?search_query=%EB%B4%84%EB%8F%99%EC%82%AC%EA%B3%BC%EB%AC%B4%EC%B9%A8");
		}
	
		
		return "recipe";
	}

	
	
	
}
