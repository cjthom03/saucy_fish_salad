import React from  'react';
import ReactDOM from 'react-dom';
import SaucyFishRouter from '../routers/router';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<SaucyFishRouter />, document.querySelector('main').appendChild(document.createElement('div')))
});

