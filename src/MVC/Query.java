package MVC;

interface Query {
	
	String USERS_TABLE =  "users";
	String TRANSACTIONS_TABLE = "transactions";
	String LOG_TABLE = "log";
	
	
	String GET_CHECKERS = "select * from " + Query.USERS_TABLE + " where role = 1";
	String GET_MEMBERS = "select * from " + Query.USERS_TABLE + " where role = 0";
}
