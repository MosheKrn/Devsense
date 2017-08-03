package model;


public class Parent {

	
private  int parentID;
private String parentName;


public  int getParentID() {
	return parentID;
}
public void setParentID(int parentID) {
	this.parentID = parentID;
}

public String getParentName() {
	return parentName;
}
public void setParentName(String parentName) {
	this.parentName = parentName;
}

@Override
public String toString() {
    return "Parent [parentID=" + parentID + ", parentName=" + parentName + "]";
}

}

