package Graph;
import java.util.ArrayList;

// 그래프(리스트) 클래스
class ListGraph{
	private ArrayList<ArrayList<Integer>> listGraph;
	
	// 그래프 초기화
	public ListGraph(int initSize) {
		this.listGraph = new ArrayList<ArrayList<Integer>>(); // 그래프 생성
		
		// 그래프 초기화
		for(int i = 0; i < initSize + 1; i++) {
			listGraph.add(new ArrayList<Integer>());
		}
	}
	
	// 그래프 반환하기
	public ArrayList<ArrayList<Integer>> getGraph(){
		return this.listGraph;
	}
	
	// 그래프의 특정 노드 반환하기
	public ArrayList<Integer> getNode(int i){
		return this.listGraph.get(i);
	}
	
	// 그래프 추가 (양방향)
	public void put(int x, int y) {
		
	}
		
}

public class adjacencyList {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
