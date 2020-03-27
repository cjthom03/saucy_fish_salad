import React from 'react';

const BackgroundImage = props => {

  const inlineStyles = {
    backgroundImage: `url(${props.url})`
  };

  return(
    <div style={inlineStyles}>
      {props.children}
    </div>
  )
};

export default BackgroundImage;
