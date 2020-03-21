import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import Home from '../screens/home';

class SaucyFishRouter extends React.Component {
  render() {
    return (
      <BrowserRouter>
        <Route path="/">
          <Home />
        </Route>
      </BrowserRouter>
    )
  }
}

export default SaucyFishRouter;
