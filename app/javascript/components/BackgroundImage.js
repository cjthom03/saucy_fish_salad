import React from 'react';
import styles from './BackgroundImage.module.css'

const BackgroundImage = props => {

  const inlineStyles = {
    backgroundImage: `url(${props.url})`
  };

  return(
    <div className={styles.fullscreen} style={inlineStyles}>
      {props.children}
    </div>
  )
};

export default BackgroundImage;
