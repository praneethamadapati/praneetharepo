package automationtesting;

import java.util.Date;

import org.testng.ISuite;
import org.testng.ISuiteListener;

public class MySuiteListener implements ISuiteListener{
	
	long startTime;
	long endTime;
	
	@Override
	public void onFinish(ISuite arg0) {
		// TODO Auto-generated method stub
		System.out.println("Completed at "+new Date());
		endTime = System.currentTimeMillis();
		System.out.println("Total time taken is: "+(endTime-startTime));
	}

	@Override
	public void onStart(ISuite arg0) {
		// TODO Auto-generated method stub
		System.out.println("Started at "+new Date());
		startTime = System.currentTimeMillis();
	}

}
