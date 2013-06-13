package pt.ulht.es.cookbook.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pt.ist.fenixframework.pstm.AbstractDomainObject;
import pt.ulht.es.cookbook.domain.CookbookManager;
import pt.ulht.es.cookbook.domain.Recipe;
import pt.ulht.es.cookbook.domain.Version;

@Controller
public class RecipeController{
	
	Version getLastVersion(Recipe recipe){
		List<Version> versions = new ArrayList<Version>(recipe.getVersionSet());
		Collections.sort(versions);
		Version version = versions.get(versions.size()-1);
		return version;
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/recipes")
    public String listRecipes(Model model){		
		List<Recipe> recipes = new ArrayList<Recipe>(CookbookManager.getInstance().getRecipeSet());
		List<Version> lastVersion = new ArrayList<Version>();
		for ( Recipe recipe : recipes ){
			lastVersion.add(getLastVersion(recipe));
		}
		model.addAttribute("recipes",recipes);	
		model.addAttribute("version",lastVersion);
		
		/*List<Version> versions = new ArrayList<Version>();
		for ( Recipe recipe : recipes ){
			List<Version> versionList = new ArrayList<Version>(recipe.getVersionSet());
			Collections.sort(versionList);
			versions.add(versionList.get(versionList.size()-1));
		}		
		model.addAttribute("versions",versions);*/	
        return "listRecipes";
    }
    
    @RequestMapping(method=RequestMethod.POST, value="/recipes")
    public String createRecipe(@RequestParam Map<String,String> params){
    	String title=params.get("title");
    	String problem=params.get("problem");
    	String solution=params.get("solution");
    	String author=params.get("author");  	
    	String tag=params.get("tag");
    	
    	Recipe recipe = new Recipe();
    	
    	recipe.addVersion(title,problem,solution,author,tag);
    	    	
    	return "redirect:/recipes/"+recipe.getExternalId();
    	
    }
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/create")
    public String showRecipeCreationForm(){
    	return "createRecipe";
    }
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}")
    public String showRecipe(Model model, @PathVariable String id) {
    	Version version = AbstractDomainObject.fromExternalId(id);
    	if(version!=null){
    		model.addAttribute("version",version);
        	return "detailedRecipe";
    	}
    	else return "recipeNotFound"; 	
    	
    	/*Recipe recipe = AbstractDomainObject.fromExternalId(id);
    	List<Version> versionList = new ArrayList<Version>(recipe.getVersionSet());
    	Collections.sort(versionList);
    	Version version = versionList.get(versionList.size()-1);
    	if(version!=null){
    		model.addAttribute("version",version);
        	return "detailedRecipe";
    	}
    	else return "recipeNotFound";*/    	
    }
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}/versions")
    public String listVersions(Model model, @PathVariable String id) {
    	Version version = AbstractDomainObject.fromExternalId(id);
    	Recipe recipe = version.getRecipe();    	
      	List<Version> versionList = new ArrayList<Version>(recipe.getVersionSet());
    	model.addAttribute("versionList",versionList);
    	model.addAttribute("recipe",recipe);
    	return "listVersions";
    }
    
    @RequestMapping(method=RequestMethod.GET, value="/recipes/{id}/versions/{id}")
    public String showVersion(Model model, @PathVariable String id) {
    	Version version = AbstractDomainObject.fromExternalId(id);
    	model.addAttribute("version",version);
    	return "detailedRecipe";
    }    
    
	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}/delete")
	public String deleteRecipe(@PathVariable("id") String id) {
		Recipe recipe = AbstractDomainObject.fromExternalId(id);
		recipe.delete();
		CookbookManager.getInstance().removeRecipe(recipe);
		return "redirect:/recipes";
	}
	
    @RequestMapping(method=RequestMethod.GET, value="/recipes/search")
    public String showRecipeSearchForm(){
    	return "searchRecipe";
    }
    
    /*@RequestMapping(method=RequestMethod.POST, value="/recipes/search")
    public String searchRecipe(@RequestParam Map<String,String> params,Model model){
    	String searchParams = params.get("searchParams");
    	String[] tokens = searchParams.split(",");
    	List<Version> results = new ArrayList<Version>();
    	for ( )    	
    	return "searchRecipe";
    }*/
	
	@RequestMapping(method = RequestMethod.GET, value = "/recipes/{id}/edit")
	public String showRecipeEditForm(@PathVariable("id") String id, Model model) {
		Recipe recipe = AbstractDomainObject.fromExternalId(id);
		model.addAttribute("recipe",recipe);
		return "editRecipe";
	}
	
    @RequestMapping(method=RequestMethod.POST, value="/recipes/{id}")
    public String editRecipe(@PathVariable("id") String id, @RequestParam Map<String,String> params){
    	Recipe recipe = AbstractDomainObject.fromExternalId(id);
    	String title=params.get("title");
    	String problem=params.get("problem");
    	String solution=params.get("solution");
    	String author=params.get("author");  	
    	String tag=params.get("tag");
    	recipe.addVersion(title,problem,solution,author,tag);    	    	
    	return "redirect:/recipes/"+recipe.getExternalId();    	
    }
}

