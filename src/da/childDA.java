package da;

	import java.sql.*;
	import java.util.ArrayList;
	import java.util.List;
    import model.Child;
	import util.dbUtil;

	public class childDA  implements childdal {

	private Connection conn;
	
	public childDA(){
	
	conn=dbUtil.getConnection();
	
	}
	
	
	@Override
	public void addChild(Child child) {
	try{
	String query="INSERT INTO public.child (child_id, child_name) VALUES (?,?)";
	PreparedStatement preparedStatement = conn.prepareStatement(query);
	
	preparedStatement.setInt(1, child.getChildID());
	preparedStatement.setString(2, child.getChildName());
	
	preparedStatement.executeUpdate();
	preparedStatement.close();
	}
	catch(SQLException e)
	{
	System.out.println(e.getMessage());
	}

	}

	@Override
	public List<Child> getAllChildren() {
	List<Child> Children = new ArrayList<Child>();
	
	try
	{
	String query = "SELECT * FROM public.child";	
	Statement statement = conn.createStatement();
	
	ResultSet ChildrenTable = statement.executeQuery(query);
	
	while(ChildrenTable.next()){
	Child ch = new Child();
	ch.setChildID(ChildrenTable.getInt("child_id"));
	ch.setChildName(ChildrenTable.getString("child_name"));
	
	Children.add(ch);
	}
	}
	catch (SQLException e) 
	{
	System.out.println(e.getMessage()); 
	}
	return Children;
	}

	
	
	
	
	@Override
	public Child getChildByID(int childID) {
	
	Child newChild = new Child();
	
	try
	{
	String query = "SELECT * FROM public.child WHERE child_id='"+childID+"'";	
	
	Statement statement = conn.createStatement();
	
	ResultSet childrenStatement = statement.executeQuery(query);
	
	
	while(childrenStatement.next()){
	newChild.setChildID(childrenStatement.getInt("child_id"));
	newChild.setChildName(childrenStatement.getString("child_name"));
	
	}
	
	}
	catch (SQLException e) 
	{
	System.out.println(e.getMessage()); 
	}
	
	
	return newChild;
	
	}

	
	
	@Override
	public void updateChild (Child child) {
	
	try
	{
	String query = "UPDATE  public.child SET child_name= ? where child_id=?";
	
	        PreparedStatement preparedStatement = conn.prepareStatement(query);
	
	
	preparedStatement.setString(1,child.getChildName());
	preparedStatement.setInt(2,child.getChildID());
	
	preparedStatement.executeUpdate();
	preparedStatement.close();
	
	}
	catch (SQLException e) 
	{
	System.out.println(e.getMessage()); 
	}
	
	

	}

	@Override
	public void deleteChild(int ChildID) {
	
	try
	{
	String query = "DELETE FROM public.child WHERE child_id= ? ";	
	
	PreparedStatement preparedStatement = conn.prepareStatement(query);
	
	preparedStatement.setInt(1,ChildID );
	
	preparedStatement.executeUpdate();
	
	}
	catch (SQLException e) 
	{
	System.out.println(e.getMessage()); 
	}
	
	}

}

