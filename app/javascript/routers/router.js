import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Home from '../screens/home';
import Recipes from '../screens/recipes';

class SaucyFishRouter extends React.Component {
  render() {
    return (
      <BrowserRouter>
        <Switch>
          <Route path="/recipes">
            <Recipes />
          </Route>
          <Route path="/">
            <Home />
          </Route>
        </Switch>
      </BrowserRouter>
    )
  }
}

export default SaucyFishRouter;
