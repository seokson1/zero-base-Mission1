package commom;

import java.io.InputStream;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XMLTEST {

	public static void main(String[] args) {

		try {
			URL url = new URL(
					"http://openapi.seoul.go.kr:8088/737876455673656f38324561465371/xml/TbPublicWifiInfo/1/20/");
			InputStream stream = url.openStream();
			char ch = 0;
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBulider = dbFactory.newDocumentBuilder();
			Document doc = dBulider.parse(stream);
			doc.getDocumentElement().normalize();
			System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			NodeList nList = doc.getElementsByTagName("row");
			System.out.println("--------------------------");
			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					System.out.println("관리번호 : " + getTagValue("X_SWIFI_MGR_NO", eElement));
					System.out.println("자치구 : " + getTagValue("X_SWIFI_WRDOFC", eElement));
					System.out.println("와이파이명 : " + getTagValue("X_SWIFI_MAIN_NM", eElement));
					System.out.println("도로주소명 : " + getTagValue("X_SWIFI_ADRES1", eElement));
					System.out.println("상세주소 : " + getTagValue("X_SWIFI_ADRES2", eElement));
					System.out.println("설치위치(층) : " + getTagValue("X_SWIFI_INSTL_TY", eElement));
					System.out.println("설치유형 : " + getTagValue("X_SWIFI_INSTL_MBY", eElement) );
					System.out.println("서비스 구분 : " + getTagValue("X_SWIFI_SVC_SE", eElement) );
					System.out.println("망종류 : " + getTagValue("X_SWIFI_CMCWR", eElement) );
					System.out.println("설치년도 : " + getTagValue("X_SWIFI_CNSTC_YEAR", eElement) );
					System.out.println("실내외구분 : " + getTagValue("X_SWIFI_INOUT_DOOR", eElement) );
					System.out.println("WIFI접속환경 : " + "" );
					System.out.println("X좌표 : " + getTagValue("LAT", eElement) );
					System.out.println("Y좌표 : " + getTagValue("LNT", eElement) );
					System.out.println("작업일자 : " + getTagValue("WORK_DTTM", eElement) );
					System.out.println();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static String getTagValue(String string, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(string).item(0).getChildNodes();
		Node nValue = (Node) nlList.item(0);
		return nValue.getNodeValue();
	}
}
