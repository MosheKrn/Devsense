package model;

public class Child {

	
private  int ChildID;
private String ChildName;


public  int getChildID() {
	return ChildID;
}
public void setChildID(int ChildID) {
	this.ChildID = ChildID;
}

public String getChildName() {
	return ChildName;
}
public void setChildName(String childName) {
	ChildName = childName;
}

@Override
public String toString() {
    return "Child [ChildID=" + ChildID + ", ChildName=" + ChildName + "]";
}

}
