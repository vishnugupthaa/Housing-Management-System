import java.time.LocalDate;

import Beans.Transaction;
import MVC.Model;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated methodstub
		
//		Transaction t = new Transaction();
//		
//		t.setMonth((2));
//		t.setYear(134);
//		t.setFlatno(435);
//		t.setPayrent(425);
//		t.setMaintainance(245);
//		t.setParking(64313);
//		t.setStatus(0);
//		
//		System.out.println(Model.getInstance().addBill(t) ? "Success" : "Failure");
		
//		System.out.println(Model.getInstance().getBill(301, 9, 2020));
		
//		System.out.println(LocalDate.now().isAfter(LocalDate.of(2020, 7, 10)));
		
		Transaction t = new Transaction();
		t.setFlatno(301);
		t.setDelay(100);
		
		System.out.println(Model.getInstance().updateBillToBeChecked(t, 5, 2020));
	}
}
