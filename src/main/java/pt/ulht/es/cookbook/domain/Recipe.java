package pt.ulht.es.cookbook.domain;

public class Recipe extends Recipe_Base {
    	
	public Recipe(){
		setCookbookManager(CookbookManager.getInstance());
	}
	
	public void addVersion(String title, String problem, String solution, String author, String tag){
		addVersion(new Version(title,problem,solution,author,tag));
	}
	
    public void delete(){
    	for ( Version version : getVersionSet()){
    		version.delete();
    	}
    	removeCookbookManager();
    	super.deleteDomainObject();
    }
    
}

