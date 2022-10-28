import Home from './Home';
import NavBar from './NavBar';
import Signup from './Signup';
import NewRecipeForm from './NewRecipeForm';
import Login from './Login';
import RecipeList from './RecipeList';
import Tips from './Tips';
import { Route, Switch } from "react-router-dom";

function App() {


  return (
    <div className="App">

        <NavBar />
        <Switch>
          <Route exact path="/recipes">
            <RecipeList />
          </Route>
          <Route exact path="/signup">
            <Signup/>
          </Route>
          <Route exact path="/login">
            <Login/>  
          </Route>
          <Route exact path="/addRecipe">
           <NewRecipeForm/>
          </Route>
          <Route exact path="/">
            <Home />
          </Route>
        </Switch>
     
    </div>
  );
}

export default App;
